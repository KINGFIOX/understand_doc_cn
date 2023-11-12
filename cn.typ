#set text(lang: "cn")
understand中文手册
#footnote[这是understand documents的中文简单翻译, 并且只有C/C++语言, 并且只有cmake的, 这是译者目前工作的环境]

#set heading(numbering: "A.1.i")

#outline()

= 介绍

本章介绍了解软件。

本手册假定您对编写项目的编程语言有一定的了解。

== 什么是 understand

Understand
是一款静态分析工具，侧重于源代码理解、度量和标准测试。它旨在帮助维护和理解大量遗留或新创建的源代码。它提供了一个跨平台、多语言、面向维护的集成开发环境（交互式开发环境）。

可分析的源代码包括 C、C++、C\#、Objective C/Objective C++、Ada、Assembly、Visual
Basic、Fortran、Java、JOVIAL、Pascal/Delphi、Python、VHDL 和
Web(PHP、HTML、CSS、JavaScript、Typescript 和 XML)。

它使用详细的交叉引用(cross-referencing)
#footnote["交叉引用"是指在一个文档、项目或系统中，通过引用其他相关信息来建立各个部分之间的关系。在软件开发中，交叉引用通常指代码中的引用关系，即一个代码元素（如变量、函数、类等）在其他代码元素中被引用的情况。通过交叉引用，可以更好地理解代码中各个部分之间的关系和依赖关系，从而更好地进行代码分析和维护。交叉引用也可以用于文档编写、项目管理等其他领域。]、语法着色
*智能* 编辑器 和 各种图形逆向工程视图( graphical reverse engineering views)
#footnote["图形化反向工程视图"是指通过图形化的方式展示代码的反向工程结果。反向工程是指从已有的代码中提取出设计和结构信息的过程，通常用于帮助理解和维护现有的代码。图形化反向工程视图可以将代码的结构、依赖关系、继承关系等信息以图形化的方式呈现出来，使得用户可以更直观地了解代码的结构和设计，从而更好地进行分析和修改。常见的图形化反向工程视图包括类图、依赖关系图、调用图等。]
and 提供代码导航。

Understand 具有分析功能，可以帮助您快速回答以下问题：

- 这个entity是什么？
- 它在哪里被修改过？
- 它在哪里被引用？
- 谁依赖于它？
- 它依赖于什么？

Understand 的架构(architecture)功能可帮助您创建源代码单元(source code units)的分层聚合(hierarchical
aggregations)
#footnote["hierarchical
    aggregations"（层次聚合）是指根据层次结构对数据进行聚合的过程。在源代码分析中，它通常指根据代码的层次结构（如包、模块、类等）对代码度量或统计数据进行聚合。通过层次聚合，可以将较低级别的度量数据（如函数级别）汇总到更高级别的层次（如类级别、模块级别），以便更好地理解和分析代码的整体情况。这种聚合可以提供更高层次的概览和洞察力，帮助开发人员和项目管理人员了解代码的结构和性能，并做出相应的决策和优化。]。
您可以为这些 单元 命名，并以各种方式对它们进行操作，以创建有趣(interesting)的层次结构(hierarchies)进行分析。

#figure(
  image("./img/2023-11-05 23.44.33.jpeg", width: 80%),
  caption: [Understand 为软件项目中包含的关系和结构创建了一个资源库。然后利用该资源库来学习源代码。],
)

== 所支持的语言

以下列表简要介绍了 Understand 支持的语言版本和/或编译器：

- Ada： Understand 单独或组合支持 Ada83、Ada95、Ada05 和 Ada2012 代码。
- 汇编： Understand 支持 NXP Coldfire 68K、JIPSE MILSTD-1750A 和 IBM System/370 的汇编代码。
- Visual Basic：Understand 支持 Visual Basic 2002 至 2015。
- C/C++： Understand 可分析 K&R 或 ANSI C 源代码以及 C++ 语言的大多数结构。Understand 可与任何 C
  编译器配合使用，并已与大多数常用的 C 编译器进行了测试。支持 C++11、C++14 和 C++17。还支持 CUDA 文件（.cu 和 .cuh）。
- Objective C/Objective C++： Understand 使用 C/C++ 解析器支持 Objective C 和 Objective
  C++。
- C\#: Understand 支持版本 9 及以下的 C\#。
- Fortran： Understand 支持自由和固定格式的 FORTRAN 77、Fortran 90、Fortran 95、Fortran 2003 和
  Fortran 2008。支持的扩展包括 Harris Fortran 和 DEC Fortran。我们经常扩展 Understand
  以支持常见的编译器扩展。如果您发现当前不支持您正在使用的编译器扩展，请通过 "support\@scitools.com" 联系我们。
- Java Understand 支持 Java 18。
- JOVIAL：支持 JOVIAL73 和 JOVIAL3。
- Delphi/Pascal： Understand 支持所有版本的 Embarcadero Delphi 语言和 Embarcadero Turbo
  Pascal 语言。它还支持带有 HP Pascal 扩展的 ISO 7185:1990（也称为 Unextended Pascal）。您还可以启用对
  Ingres 嵌入式 SQL 语句的支持。
- Python Understand 支持 Python 2 和 Python 3。
- VHDL：支持 VHDL-87、VHDL-93 和 VHDL-2001 版本。
- 网络 支持 HTML、PHP、CSS、JavaScript、Typescript 和 XML 文件。

== 太长不读的速通指南

如果您和 SciTools 的许多工程师一样，喜欢钻研并开始使用软件。 我们鼓励您这样做，或者至少我们足够务实，知道您无论如何都会这样做！
因此，请放心使用本手册作为安全网(safety net)，或查找不太明显的功能。 不过，在离开本手册之前，请先浏览下一章，了解如何有效利用 Understand
提供的功能。

除了本手册之外，您还可以从以下其他地方获取建议：

- 点击欢迎界面中的一个示例项目，下载并打开该项目。您还可以使用 "帮助">"示例项目 "菜单下载项目。使用 "视图 "菜单打开视图，使用 Understand
  的各种功能。
- 阅读 Understand 提供的提示。如果您已禁用提示并希望再次看到提示，请选择帮助 > 重置所有提示。
- 从菜单中选择帮助 > 帮助内容。
- 访问 support.scitools.com，查看解释有用功能的知识库主题。
- 访问 blog.scitools.com，阅读有关用户如何使用 "理解 "的文章。
- 访问我们的 YouTube 频道，观看有关使用 Understand 的视频。
- 订阅我们的时事通讯，了解客户使用 Understand 的方式。
- 如果您有具体问题，可以单击 "Understand 欢迎 "选项卡中的 "聊天 "图标，使用 "欢迎机器人 "向我们发送您的问题。

对于更高级的用户，可以尝试这些信息来源：

- 选择 "帮助">"关于了解"，查看当前运行的版本。
- 访问 support.scitools.com，阅读 Build Notes，了解最近添加了哪些功能。
- 选择帮助 > 按键绑定，获取大量按键帮助。
- 选择 "帮助">"Perl API 文档 "和 "帮助">"Python API 文档 "可获得有关脚本的帮助。Java API 文档位于 Understand
  安装的 doc/manuals/java 子目录中。
- 有关知识库主题，请参阅支持网站。
- 插件和 API 示例、模板和文档可在插件 Git 代码库中获取，网址是 https://github.com/stinb/plugins。

(怎么说, 这个插件系统好像没做太好, 不知道是软件本身人气不够, 还是确实插件系统不太行)

= 部件与术语

本章通过介绍 Understand 中的基本窗口，帮助您快速、轻松地使用 Understand。

== understand的GUI

Understand 有一个主窗口和许多在 Understand 应用程序窗口内打开的较小区域。您可以根据自己的需要在工作区中安排这些区域。

#figure(image("./img/2023-11-06 08.03.23.png"))

- title bar： 您可以拖动主窗口周围区域的标题栏。如果移动到主窗口的边缘，就会展开一个停靠区域。如果将该区域拖到那里，它就会 "停靠 "到主窗口的边缘。
- Pushpins and Drawers： 单击图标可将区域移动到与该区域停靠的主窗口边缘相同的标签页上。这是一个 " Drawers"，当鼠标指向标签页标题时会自动打开。如果不单击该区域而将鼠标移开，或者单击当前打开的抽屉的标题选项卡，抽屉就会关闭。再次点击图标可 "pin "打开的抽屉。
- Dock/Undock： 单击该图标可将该区域更改为非锁定窗口。在非停靠窗口中再次单击该图标可返回停靠区域。
- close： 单击 "X "图标关闭该区域或未停靠窗口。
- drop down: 单击图标可查看该区域的context menu。右键单击 "understandl" 中的项目通常会显示该项目特定的context
  menu。
- Sliding Frame： 您可以拖动窗口区域之间的边框来改变它们的大小。
- pervious and next： 每种区域类型的标题栏下方都有不同的图标。对于所示的 "infomation
  browser"区域，您可以浏览已查看实体的历史记录。对于其他区域，您将看到其他图标。

"understand"
使用最新的session(会话)布局打开项目。对打开的工具、工具栏、选项卡和其他功能及其大小和位置所做的更改会自动保存为会话的一部分。您可以使用session
browser创建和保存多个会话布局。

(但是说实话, 不知道这里的session代表)

== understand的术语

在继续阅读本手册的其余部分之前，请花点时间熟悉一下 Understand
的术语。这样做将使您在阅读本手册时更有帮助，并在您需要发送电子邮件或致电技术支持团队时与他们保持一致。

- Architecture： Architecture是源代码单元（entities）的hierarchical
  aggregation(分层聚合)。Architecture可以由用户创建或自动生成。Architecture不需要完整（即架构的flattened
  expansion(扁平化扩展)不需要引用项目中的每个source entity），也不需要唯一（即架构的扁平化扩展不需要维护集合属性）。(有点抽象,
  什么叫做flattened expansion, 什么叫做 set property)
- database(数据库)： 数据库以可快速搜索的格式包含源代码分析结果。数据库是 parse.udb 文件，可存储在项目文件夹的 "本地 "子目录下。该数据库会根据每个项目的需要重新生成。在以前的
  Understand 版本中，数据库还包含所有项目设置信息，因此很难共享项目。有关详细信息，请章节"Project Storage"。
- entity： Understand 的 "entity "是指任何与之相关的信息。实际上，这是指在源代码和包含项目的文件中声明或使用的任何内容。子程序、变量和源文件都是实体的例子。
- 项目： 您分析过的源代码集(the set of source code)以及选择的设置和参数。.und 项目目录包含与团队其他成员共享项目所需的一切内容。
- relationship(关系)： 实体之间相互关联的一种特殊方式。关系的名称来自编程语言的语法和语义。例如，子程序实体可以有 "调用 "关系和 "由调用 "关系。
- 脚本： 一般是 Python 或 Perl 脚本。这些脚本可以通过 Understand 的图形用户界面运行，也可以通过 "upython "或 "uperl "命令从外部运行。通过
  Understand Python 和 Perl API，可以轻松直接地访问存储在 Understand 项目中的所有信息。

=== 部件

下图显示了 Understand 图形用户界面（GUI）的一些常用主要部分：

#figure(image("./img/2023-11-06 08.19.07.png"))

== start understand

在 Windows 上安装 Understand 时，会在 Windows 开始菜单中添加启动软件的命令。

启动 Understand 后，您将在 "Understand "窗口中看到 welcome page。要开始创建新项目，请单击
new（请参阅章节Creating a New Project）。

#figure(image("./img/2023-11-06 08.22.51.jpeg"))

欢迎页面显示了可供下载的示例项目和您最近打开的任何项目的汇总图形(summary graphics)--行类型细目、目录结构和最复杂函数。提供的示例项目使用
C、C++、Ada、Delphi、VHDL、Visual Basic、Fortran、Python、C\# 和 Java。

单击任何项目的title bar，下载并打开该项目。如果要打开的现有项目没有列出，请单击 "open" 并浏览。

#figure(image("./img/2023-11-06 08.25.44.jpeg"))

您也可以从菜单中通过 File > Open > Project and File > Recent Projects来打开项目。

如果要打开用早期版本的 Understand 创建的项目，并将其转换为新的项目存储格式，请选择 File > Open > Legacy .udb
项目。浏览以选择带有
.udb扩展名的文件，该文件被早期版本用来包含项目而不是目录。系统会询问你是否希望将新项目存储在与源代码相同的位置或不同的位置。选择与源代码相同的位置可以使项目更容易共享。

您可以通过 File > close \<project_name\>.und 关闭当前项目。通过 File > Exit 关闭 Understand。

您可以在 Understand
中同时打开一个项目。打开项目时，如果当前项目已打开，系统会询问您是否可以关闭该项目。您对项目设置以及视图和工具安排所做的任何更改都会自动保存。如果您更改了源代码，系统会提示您在每个文件中分别保存或放弃更改。要了解项目文件的保存位置以及如何将其保存在源代码控制系统中，请参考章节"Project
Storage"。

要显示或隐藏welcome page的部分内容，请使用欢迎页面的drop-down menu(下拉菜单)。minimal
view在较小的卡片上显示项目，一次显示一个summary graphics。聊天图标可用于向我们的支持团队发送问题。

要控制项目列表，请使用单个项目的drop-down
menu(下拉菜单)。您可以将最常用的项目固定在列表顶部。编辑欢迎页面上的项目名称只会影响欢迎页面上显示的内容，不会更改项目本身

#figure(image("./img/2023-11-06 08.35.31.png"))

如果您关闭了欢迎页面并希望重新打开，请从菜单中选择 Help > Show Welcome Page 。如果不想每次运行 "Understand "时都看到欢迎页面，请切换 "Don’t
Show Again" 选项。

如果想确保已经安装了最新版本的 Understand，可以从菜单中选择 Help > Check for Updates。(如果有新版本，您会在 Getting
Started tab 中看到 "获取新版本 "按钮）。

=== other ways to use understand

有关从命令行运行 Understand 的信息，请参阅""。

如果多个用户在同一台机器上运行 Understand，每个用户可能都有一个单独的初始化文件。这些文件存储用户首选项。根据操作系统的不同，Understand
会在以下位置查找初始化文件位置：

- Windows： C:\Users\<Username>\AppData\Roaming\SciTools\Understand.ini
- Linux/Unix： ~/.config/SciTools/Understand.conf
- MacOS: ~/Library/Preferences/com.scitools.Understand.plist

== context menus are everywhere

在Understand中，右键单击可以让你走得更远；几乎在你指向的任何地方，你都可以通过鼠标右键调出菜单，了解更多信息，完成更多操作。

例如，右键单击 "源编辑器"（Source Editor）中的一个实体，就会看到此处显示的命令列表。

使用右键菜单时，按住 Ctrl 键可打开新窗口，而不是重复使用现有窗口。

请记住，随时随地右键单击任何实体，都可以获得该实体的更多信息。

#figure(image("./img/2023-11-06 08.50.21.jpeg"))

右键单击 过滤区域(entity in the filter area) 和 信息浏览器(Information browser)
中的实体(entity)可提供以下选项列表：

#figure(image("./img/2023-11-06 09.09.16.jpeg", width: 50%))

#figure(image("./img/2023-11-06 09.10.15.jpeg", width: 50%))

== 快速查找

Understand 提供了几种在源代码中快速查找相关项目的方法。这些功能包括 "过滤区"(filter area)、"实体定位器"(entity
locator) 和 "查找文件"(find in file) 对话框。

=== entity(实体) filter(过滤器)
#footnote[在计算机科学中，"entity"和"instant"都可以指代实例，但它们在语义上有一些区别。
    "Entity"通常表示一个抽象的概念或对象，它可以代表一个类、类型或实体的集合。它是一个更广泛的术语，用于描述具有某种特性或行为的事物。例如，在面向对象编程中，一个类可以被视为一个实体。
    "Instant"则更具体，表示一个具体的、独立的实例。它是根据某个实体创建的具体个体。例如，在面向对象编程中，通过实例化一个类，我们可以创建一个类的具体实例，这个实例就可以称为"instant"。
    总之，"entity"是更抽象的概念，代表一类事物，而"instant"是指具体的实例。]

Understand 窗口的筛选器区域可将项目分为文件、代码文件、头文件、类、函数、枚举器、对象、类型、宏、子程序、包、模块、块、方法、接口、SQL
表等列表，帮助您快速查找代码中的内容。可用筛选器(filter)的类型取决于你配置的 Understand 项目所能理解的语言。

单击筛选器区域后，可以键入一个字母，移动到当前列表中以该字母开头的第一个实体。

默认情况下，信息浏览器会显示所选实体的所有已知信息。这是导航 Understand 的关键。

#figure(
  image("./img/2023-11-06 09.39.44.png"),
  caption: [For details, see Entity Filter and Information Browser],
)

=== entity(实体) locator(定位)

过滤器(filter)提供了一种快速查找项目中已声明和使用的主要项目的方法。
不过，过滤器中不会列出某些项目，如局部参数、变量、未定义（从未声明或定义）和未解决变量（已声明但未定义）。 要搜索或浏览整个项目，请使用实体定位器。

要打开实体定位器(entity locator)，通过 View > Entity Locator

#figure(image("./img/2023-11-06 09.50.52.jpeg"))

默认情况下，该区域列出项目中的所有实体。您可以使用每列上方的字段搜索与特定文本或 regex(正则表达式) 字符串匹配的实体。

有关详情，请参阅 chap 实体定位器(entity locator)。

与其他窗口一样，上下文菜单(context menu)也处于活动状态。

您可以选择多行和多列，并将其内容复制到剪贴板。粘贴时，内容将以制表符"\\t"分隔的文本形式粘贴。

=== instant search

instant search可让你即时搜索整个项目，即使该项目包含数百万行源代码。当你输入时，你可以看到与你输入的字符串相匹配的术语。

instant search支持多种强大的搜索选项。see chap "instant search"。

#figure(image("./img/2023-11-06 10.04.04.jpeg"))

=== find in files

与 Unix 命令 grep 类似，您可以搜索文件中出现的字符串。从 "搜索 "菜单或上下文菜单中选择 "Find in Files"。

单击 "Find" 后，"Search Results" 窗口中将显示与指定字符串或正则表达式匹配的所有出现列表。双击任何结果都会显示出现该字符串的源视图。

通过选项可以设置诸如大小写敏感性和通配符模式匹配等行为。

更多信息，请参阅chap"find in files"。

#figure(image("./img/2023-11-06 10.32.14.jpeg"))

=== 收藏夹

您可以将常用的实体和代码位置放在收藏夹(favorite)列表中。要添加一个收藏夹，请右键单击该收藏夹，然后选择添加到收藏夹以及包含此项目的列表名称。

要查看收藏列表，请选择 View > Favorites，然后选择要打开的列表名称。

#figure(image("./img/2023-11-06 10.28.21.jpeg"))

== information browser

关于代码，Understand 知道的几乎所有信息都显示在信息浏览器(IB, information browser)中。IB 用于所有类型的实体(all
type of entity)。

信息浏览器(information browser)会根据所选实体的类型显示不同的内容。

它显示有关实体的各种信息，如源文件、类、成员、函数、类型、方法、包、接口等。具有层次性质的信息（如调用关系）可以多级展开。

下面是一个文件和一个 C 语言函数的信息浏览器窗口：

#figure(image("./img/2023-11-06 10.35.03.png"))

更多信息, 参阅chap "information browser".

== 源文件编码器

Understand 有一个源代码编辑器，它不仅能让你编辑源代码，还能为源代码着色，并告诉你正在编辑的代码。

double-click工具中几乎任何其他地方，都可以访问源代码。使用工具栏上的 "下一步 "和 "上一步 "图标，可以向前或向后移动这些 "访问"。

#figure(image("./img/2023-11-06 10.42.55.jpeg"))

与 Understand 中的其他地方一样，整个编辑器中都有context menu。要了解某项内容，只需right-click该内容，即可查看可用信息。

更多信息, 参阅chap "source editor".

== architecture browser

architecture
browser允许您管理architecture。它显示了项目中所有已定义architecture的列表，并提供了浏览单个architecture的方法。

例如，该窗口显示 Understand 提供的自动架构： 日历、目录结构、语言。在这里，这些体系结构在一定程度上被扩展，以显示示例应用程序的节点。

#figure(image("./img/2023-11-06 11.00.01.jpeg"))

您可以使用自动架构(auto-architectures,)、创建自己的架构(create your own architectures)、导入和导出架构（作为
XML 文件）(import and export architectures (as XML
files))、为架构层次结构中的任何级别生成图表和指标(generate graphs and metrics for any level in an
architecture hierarchy)，以及通过筛选将架构组合起来(combine architectures through filtering)。

更多信息, 参阅 chap "About Architectures"

== graphical views

Understand 可分析软件代码并创建数据库，其中包含有关实体和实体间关系的信息。然后，可以使用各种 "graphical view"
窗口浏览项目。图形视图分为以下几种：

- 层次视图(hierarchy views)显示实体(entity)之间的关系。
每个视图都是按照一种关系（例如 "calls"），从（您查询的）起始实体开始，直到其子实体和后续实体(its children and successors)。

- 结构视图可快速显示添加到软件结构中的任何实体的结构（例如包、函数、过程或任务）。

每种类型的示例如下图所示：

#figure(image("./img/2023-11-06 11.08.17.png"))

== APIs for custom reporting

您（或我们）编写的脚本和程序也可以直接使用 Understand 数据。Understand 提供 C API（可从 C、C++ 或其他可调用 C
库的语言中使用）、Python 接口、Java 接口和 Perl 接口。

使用 API，您可以获得与我们编写现有图形用户界面和报告生成器时完全相同的访问权限。

有关可用 API 的更多信息，请参见第 288 页的 API。

本手册不提供 API 的详细文档。示例、模板和文档可在插件 Git 代码库 https://github.com/stinb/plugins
中找到。在以下位置可以找到 API 的其他文档：

- Perl API： 选择帮助 > Perl API 文档。

- Python API： 选择帮助 > Python API 文档，或查看 Understand 安装的 doc/manuals/python 子目录。

- Java API： 请参见 Understand 安装程序的 doc/manuals/java 子目录。

= 配置你的项目

本章介绍如何创建用于分析源代码的新 Understand 项目文件。

== 关于 understand projects

Understand 就像一个编译器，只不过它创建的是信息，而不是可执行代码。为了让 Understand
分析你的源代码，它需要编译器所需的大部分信息。它需要知道

- 要分析哪些源文件
- 源代码的类型
- 标准库路径和包含目录
- 在哪里可以找到 Java .jar 文件，这些文件提供了您没有源代码的类
- 需要为预处理器定义的编译器/环境特定宏
- 特定于应用程序的宏定义
- 使用哪些实现参数（如整数精度）和列截断设置
- 任何命名空间

如果您开发了这个程序，或者已经使用了一段时间，那么这些信息对您来说可能是显而易见的。但是，如果你从其他程序员、团队或公司继承了这些源代码，你可能需要检查项目构建文件（例如
makefile），才能获得准确分析代码所需的信息。

分析代码的最简单方法是使用 Understand 的图形用户界面来构建和分析项目。本章将引导您完成这一过程。

=== project storage

Understand project 存储在一个目录树中。所有文件都是文本文件，体积小，便于共享和/或使用版本控制系统进行管理。

每当项目发生变化时，都会自动保存。用户界面中的任何更改（如调整窗口大小）也会保存下来。此外，布局(layouts)会保存在项目级别，因此你可以按某种方式排列窗口，该项目就会一直以这种方式显示。

默认情况下，创建的项目存储在项目顶级源代码目录中名为 \<project\>.und 的目录中。该目录中的文件包含重新创建项目所需的全部信息（除源代码外）。

如果您使用的是 Windows，可以右键单击 \<project\>.und 文件夹，然后选择用 Understand 打开，在 Understand
中打开项目。

如果要复制当前配置，例如创建一个配置的两个变体(variants)，可以复制存储项目设置的目录树。

通常不作为源代码共享或管理的文件存储在单独的位置。这些文件包括特定于用户的数据，如收藏夹和书签，以及以专有二进制格式存储的 parse.udb
数据库。运行以下命令行即可找到此类内部项目信息的保存位置：`und projectinfo myproject.und`。默认位置如下

- Windows 下： C:\Users\<Username>\AppData\Local\SciTools\Db
- Linux/Unix： ~/.local/share/Scitools/Db
- MacOS： ~/Library/Application Support/Scitools/Db

可以使用 "tools" > "options" 命令更改这些文件的位置，并更改 general 类别中 "setting files"的位置。

如果需要，可以强制 Understand 将与项目有关的所有文件存储在 \<project\>.und 目录中。具体方法是在 \<project\>.und
目录内创建一个名为 "local "的空目录，并在其中填充其他文件。

parse.udb 项目数据库允许多用户同时读取，但不支持多用户写入。如果项目数据库被锁定，你会看到一条信息。

有时，Understand 的新功能需要更改数据库格式。此类更改会在该版本的 "构建说明 "中注明。安装修改数据库格式的构建时，打开现有项目时会自动重新分析。

从欢迎页面下载并打开的示例项目通常存储在以下位置：

- Windows 下： "C:\\Users\\\<Username>\\\AppData\\Roaming\\SciTools"
- Linux/Unix： ~/.config/SciTools
- MacOS： ~Library/Application Support/SciTools/samples

== 创建新项目

要开始分析代码，您需要创建一个项目并指定要分析的源文件。Understand
会分析你的代码并存储信息。这些信息可以在图形用户界面中逐步刷新，也可以使用命令行工具进行更新。

要创建一个新项目，请按照以下步骤操作：

1.

在启动 Understand 时看到的欢迎页面中单击 "new" 链接。或者从菜单中选择 "file">"new">"project"。

- 默认情况下，这将打开 New Project Wizard#footnote[wizard: n. 术士；奇才] (新建项目向导)。
- 或者，您可能已经禁用了运行该向导的选项（请参阅第 95 页），在这种情况下，您会看到 "创建新项目为...... "对话框。浏览到希望创建项目的文件夹。在文件名字段中键入项目名称。单击 "保存"。将在所选位置创建一个目录，其名称由您提供，后缀名为".und"。您将看到 "了解项目配置 "对话框，第
  40 页将对此进行介绍。
- 另一种创建项目的方法是在 gcc/g++ 编译过程中添加 Buildspy。

这将在编译项目时自动生成一个 Understand 项目。参阅 chap "Using Buildspy to Build Understand
Projects"。

*Note*: 开始创建新项目时，之前打开的任何项目都会关闭。每个 Understand 实例一次只能打开一个项目。

2.

在向导的第一页，单击添加目录并浏览到源代码的顶级目录。 您可以选择一个或多个根目录。 如果使用 Git 管理源代码，请单击 "add Git
reposity"，其他步骤请参阅 chap "history option"。

如果项目包含多个可执行文件，建议为每个可执行文件创建一个单独的 Understand 项目。

#figure(image("./img/2023-11-06 11.36.32.jpeg"))

3.

click continue

4.

此时可能会出现其他提示，具体取决于源目录中的内容。根据情况回答这些提示，然后单击 "继续"。

- 例如，如果该位置中已经存在一个 Understand 项目，则会出现提示，询问您是否要使用该项目中的设置。
- 如果存在构建文件，系统会询问您是否允许 Understand 观察您的构建以创建更精确的项目。请参阅chap "Using Buildspy to Create
  Projects"。
- 如果源文件使用 Cmake，系统会询问您是否要从 Cmake 编译数据库文件导入信息。请参阅chap "Creating Projects from
  cmake"。
- 如果位置中存在 Visual Studio 项目，系统会询问您是否要导入该项目以创建更精确的配置。请参见 chap "See Creating Projects
  from msvc"。
- 如果位置中存在 Apple Xcode 项目，系统会询问您是否要导入该项目以创建更准确的配置。请参阅 chap "Creating Projects from
  apple xcode"。

5.

向导的 "Create Your Understand Project" 页面会检测源代码中使用的语言，并提供 Understand 项目文件的默认位置。

#figure(image("./img/2023-11-06 12.33.07.jpeg"))

6.

您可以使用左侧的复选框禁用语言。(如果以后想重新启用语言，可以在 "project configuration" 设置中进行）。

7.

对于大多数语言，您可以从右侧的下拉列表中选择要用作 代码分析基础 的 standrad version 或 compiler。

8.

默认情况下，项目将放置在主源代码目录下的一个目录中。理解项目文件基于文本，体积小，便于共享和/或使用版本控制系统进行管理。如果不想将项目与源代码一起存储，请单击 "Where
would you like to save your project" 旁边的...，然后浏览选择其他位置。有关项目存储方式的更多信息，请参见 chap。

9.

如果知道要配置其他项目设置，如使用的语言、文件类型、文件编码或特定语言选项，请选中 "Configure advanced settings after
project creation"框，以便在创建项目后自动打开项目配置对话框。请参阅chap "Project Configuration Dialog"。

10.

如果希望存储项目中的文件路径，以便与其他用户共享项目，请选中"Enforce portability" 复选框。有关详情，请参阅 chap "Portability
Options"。

11.

单击"create project"。新项目就创建并打开了。

=== Using Buildspy to Create Projects

当你导入一个包含 C/C++ 代码的项目时，新建项目向导会询问你是否希望通过让 Understand
观察你的编译过程来创建一个更精确的项目。它可以通过分析传递给编译器的包含路径和宏定义信息来实现这一功能。

要使用此功能，请选择 "是"，观察我构建 C/C++ 项目，然后按提示操作。

在出现提示时，应首先清理联编或删除联编目录，以便运行整个编译过程。运行编译时，一次只针对一个目标进行编译，而不是同时针对多个目标进行编译。当 Buildspy
正在收集编译器动作时，你可以运行多个构建。

Buildspy 会检测 c++、cc、cl、clang、clang++、g++ 和 gcc 命令的编译器。如果你的编译器有不同的命令，请在开始编译前点击 "Watch
Options"，添加你的编译器命令。

要从命令行运行 Buildspy，请参阅 chap "Using Buildspy to Build Understand Projects"。

=== 从cmake project创建understand project

如果使用 Cmake 来构建项目，则可以用它来生成 Understand
项目。它将添加所有文件，为每个文件设置正确的宏定义，并为项目中的每个文件设置正确的包含文件。用这种方法创建的项目要比手工创建的项目准确得多，让您可以更轻松地使用所有
Understand 功能。

请按照以下步骤使用 Cmake 文件构建项目：

1.

navigate to your build directory

2.

编辑 CMakeCache.txt 文件（在build文件夹中）并将 CMAKE_EXPORT_COMPILE_COMMANDS 设为 ON。

3.

clean the build，以便 make 能运行完整的联编。

4.

为您编辑了 CMakeCache.txt 文件的联编目标运行 make。在build目录中会生成一个名为 compile_commands.json 的文件。

#figure(image("./img/2023-11-06 12.54.16.jpeg"))

5.

在 Understand 中选择 file > new > project，运行新建项目向导。

6.

指定使用 Cmake 的项目的根目录，该项目包含 CMakeLists.txt 文件，并已设置了一个或多个build。

7.

单击 "continue" 时，Understand 会检测到源代码使用了 Cmake，并询问您是否要指定一个 Cmake 编译数据库。

8.

单击"add file"并选择生成的 CMakeCache.txt 文件。

9.

单击 "continue"。您将看到向导的 "create your understand project" 页面，该页面会检测源代码中使用的语言，并提供
Understand 项目文件的默认位置。

有关使用命令行从使用 Cmake 的源代码项目创建 Understand 项目的信息，请参阅支持网站上的 "Cmake 和 Understand "主题
https://support.scitools.com/support/home。

== project configuration dialog

当你选择 project > configure project菜单时，将打开 "the understand project configuration"
对话框。

通过 "project configuration" 对话框左侧的类别，可以指定分析期间使用的各种项目设置。"the project
configuration"对话框包含以下类别：

- 语言： 设置要分析的语言类型。
- 文件： 设置要分析的源文件的位置。
- 文件类型： 设置如何处理源文件类型以及使用的文件扩展名。
- 文件选项： 设置源文件的文件编码和编辑模式。
- 导入： 指定导入文件和排除筛选器。
- 历史： 选择一个 Git 仓库和/或以前的项目，以获取历史信息和实体比较。
- 可移植性： 选择项目可移植性选项。
- 特定语言选项： 为您在语言类别中选择的语言设置选项。
  - C++ 模糊选项
  - C++ 严格选项

有关调整项目配置以提高项目分析准确性的建议，请访问 SciTools 网站。

#figure(image("./img/2023-11-06 13.03.31.jpeg"))

由于有很多配置选项，Understand 可以使用 "search settings" 框轻松查找选项。 例如，要查找文件编码设置，请在搜索字段中输入 "encoding"。
Understand 会移动到包含搜索字符串的第一个类别，并突出显示该字段。您可以根据需要单击箭头移动到下一个类别。例如:

#figure(image("./img/2023-11-06 13.06.33.jpeg"))

更改项目配置后，单击 "OK"按钮，配置将被保存。无论何时修改项目配置中的文件（包括在创建项目时），都会出现一个对话框，提醒您配置已更改。

单击 "yes"，Understand将开始分析（解析）代码

如果要关闭 "project configuration"对话框而不保存任何更改，请单击 "cancel"，然后在 "asks if you really do
not want to sace your changes" 框中单击 "discard changes"。

如果要复制当前配置，例如创建一个配置的两个变体(variants)，可以复制存储项目设置的目录树。

== language category

在 "project configurations" 对话框的 "languages"类别中，可以选中项目中使用的语言的复选框。
一个项目可以包含一种或多种语言的源代码。

#figure(image("./img/2023-11-06 13.12.13.png"))

有关特定语言的语言支持信息，请将鼠标光标停留在语言名称上。

#figure(image("./img/2023-11-06 13.14.png"))

选择一种语言后，该语言的类别将添加到项目配置对话框左侧的列表中。 在此选择的语言不仅会影响分析源文件的方式，还会影响可用的筛选器类型和分析结果。
它们还会影响可用的过滤器类型和指标。

如果选择多种语言，则会分析这些语言之间的引用。 例如，如果 C 代码调用 Java 函数，就会发现该引用。

== file category

在项目配置对话框(project configuration dialog)的文件类别(files
category)中，可以向项目添加源代码目录和/或单个文件。 还可以从分析中删除特定文件，并修改各个目录和文件的特定语言选项。

#figure(image("./img/2023-11-06 13.17.png"))

您可以在此添加源文件，也可以将项目与 MS Visual Studio 项目文件中指定的文件绑定（仅限 MS Windows 版本的 Understand）。
您还可以将项目与 CMake 或 Xcode 项目同步。

顶部区域以可展开的树形显示已添加的目录和文件。它还显示当前项目中有多少文件。

对话框顶部的图标可执行以下操作：

#figure(image("./img/2023-11-06 13.20.30.png"))

底部区域显示您为所选目录或文件设置的任何覆盖。 如果在目录中添加的文件未显示在此对话框中，请单击"rescan"。
right-click以获取添加或删除目录或文件、展开或折叠目录树、重新扫描目录以查看更改以及配置覆盖设置的选项。 请注意，只有单击"OK"后才会保存更改。

=== adding directories

要将源代码目录添加到项目中，请单击📂. 您将看到 "添加目录 "对话框：

#figure(image("./img/2023-11-06 13.25.png"))

1.

在Directory中，键入完整的目录路径。或者，也可以单击...按钮，使用 "Browse for Folder" 对话框查找包含源文件的目录，然后单击 "OK"。

2.

在"configured filters"字段中，如果要从显示的列表中添加或删除语言，请单击...按钮。 在 "select filters from
configured file types"对话框中，在希望识别为项目一部分的语言旁边打上复选标记。 (in the select filters from
configured file types dialog, put a checkmark next to any languages you want to
be reconized as part of the project) 请注意，除了语言类别中显示的语言外，还列出了其他语言。 这些语言包括
Basic、MSDos Batch、Perl、SQL、Tcl、Text、Verilog 和 XML。

如果该目录包含扩展名未列出的源文件，请单击 "configure"。

3.

在 "configured filters" 字段中，键入一个模式匹配字符串，该字符串只能匹配要保留在分析中的文件。例如，std\*.\* 仅包括以 "std "开头的文件。可以用逗号分隔过滤器。

4.

在 "exclude" 字段中，键入与要从分析中排除的文件匹配的模式匹配字符串。例如，temp\*.\* 可排除所有以 "temp "开头的文件。可以用逗号分隔过滤器。

5.

要选择多个子目录并将其添加到项目配置中，请选中 "include subdirectories"复选框（默认为打开）。
这样，指定路径下所有子目录中与过滤器匹配的源文件都会被添加到项目中。

6.

如果想watch此目录是否有新文件或已删除文件，请选中监视此目录复选框。 无论何时从该目录中添加或删除源文件，都会在该项目中反映这一变化。
被watch的目录在文件列表中用眼睛图标表示。 排除在监控范围之外的目录则用图标(非眼睛)表示。 默认情况下，被监视目录的子目录也会被监视。

7.

设置字段后，单击"OK"按钮将该目录中的源文件添加到项目中。 如果添加文件过程耗时过长，可以单击"Cancel"。

Tips:

您可以从多个目录树中添加文件。

您可以将其他窗口中的目录、文件或文件选区拖放到 "project configuration" 对话框中，将其添加到项目中。 如果拖动文件夹，则会自动打开 "add
a project directory"对话框。 如果拖动单个文件，无论该文件是否与文件过滤器匹配，都会添加到项目中。

目录路径在界面中显示为绝对路径，但在大多数情况下在项目中存储为相对路径。

=== adding files

要将单个源文件添加到项目中，请单击📃(文件)。 您将看到一个文件选择对话框，可以选择一个或多个源文件添加到项目中。 浏览并选择一个或多个文件。
然后单击"open"。 文件就会添加到项目中。

如果单击图标旁边的向下箭头，可以选择导入包含要导入的源文件列表的文本文件。 例如，您可以从编译器应用程序或代码管理系统生成这样一个文件。
该文件每行应包含一个绝对文件路径。

=== removing directories and files

要从项目中删除目录或文件，请选择要删除的项目并单击(垃圾桶)。 目录或文件本身不会从文件系统中删除。 移除文件的文件名以删除线显示。

您可以右键单击已移除的文件或目录，然后选择，"restore selected files"将其重新添加到项目中。

=== setting overrides

通常，项目中的每个文件都会根据您在 "project configuration" 窗口中为文件语言指定的规则进行处理。
例如，对于C++，您可以设置包含目录和宏定义。 不过，您也可以根据需要逐目录或逐个文件覆盖默认设置。

覆盖一个目录的设置： 要覆盖某个目录的设置，请按以下步骤操作：

1.

选择一个目录。

2.

单击 🔧 (扳手) 或 right-click 并选择 "configure override settings"

#figure(image("./img/2023-11-6 16.39.png"))

3.

在 "watched properties" 类别中，您可以选择如何监视此目录中的文件，以查找要添加到项目中的新文件或要从项目中删除的已删除文件。 在 "watch
settings" 中，可以选择 "watch directory"、"do not watch directory"或 "use parent
directory settings"。 除了指定是否监视目录外，您还可以为单个目录设置筛选器和排除筛选器，以控制新文件和删除文件的类型

4.

file type category 可让您覆盖该目录中文件所使用的语言 文件编码类别可让您覆盖 "文件选项" 中所述的编码设置。

5.

在各种特定于语言的覆盖类别中，您可以进行特定于目录的语言相关设置。可用类别因源文件语言而异。

6.

单击 "OK" 保存覆盖设置。

*overrides for a file*：要覆盖文件的设置，请按照以下步骤操作：

1.

选择文件。

2.

单击 🔧 (扳手)

或right-click并选择 "configure override settings"。

#figure(image("./img/2023-11-06 16.45.png"))

3.

在 "watched properties" 类别中，您可以选择 "由父目录监视"（Watched by parent
directory），以便在父目录被监视时监视文件，或者选择 "排除监视"（Exclude from watch）。

4.

"file type"类别可让您覆盖文件使用的语言，如"file type options"中所述。 文件编码类别可让您覆盖 "file options"
中所述的编码设置。

5.

在各种特定于语言的覆盖类别中，您可以进行特定于文件的语言相关设置。 可用类别因源文件语言而异。

6.

单击 "OK" 保存覆盖设置。

目录树中的特殊图标 有watch, 哪些目录 有overrides，或同时 有override, 有watch。

,

各种 "Override" 类别都有一个 "ignore parent overrides" 复选框。
选中该复选框后，只有在本级（目录或文件）应用的覆盖设置才会被应用； 更高级别的设置不会被继承。

== file type options

在 "project configuration" 对话框的 "file type" 类别中，您可以控制 Understand 如何解释文件扩展名。

#figure(image("./img/2023-11-06 16.53.png"))

该列表显示所有已理解的文件扩展名。 您在语言类别中勾选的语言类型的文件将作为项目的一部分进行分析。 其他文件类型不会被分析。

要修改现有类型，请选择该类型并单击 "编辑"。

要在列表中添加文件扩展名，请单击新建。 键入文件扩展名并选择文件扩展名要使用的语言。 然后单击确定。

#figure(image("./img/2023-11-06 16.55.png"))

文件扩展名应以 "." 开头。可以包含简单的 \* 和 ? 通配符。

根据所选语言的不同，某些文件类型可能会有不同的解释。 例如，在 Visual Fortran 项目中，.h 文件被解释为 Fortran 文件，而不是 C
头文件。

您可以逐个文件或逐个目录覆盖文件类型设置。

== file options

在 "project configuration" 对话框的 "file type"类别中，您可以控制通过 understand 打开和保存文件的方式。

#figure(image("./img/2023-11-06 16.59.png"))

文件编码： 选择保存此项目源文件时要使用的编码类型。 支持多种编码格式。 如果希望该设置与其他项目的设置不同，或者其他应用程序在打开或显示 Understand
保存的文件时出现问题，则应在项目级别更改该设置。 有关详细信息，请参阅第 104 页的编辑器类别。 默认文件编码为 "系统"，即计算机的默认编码。
您可以逐个文件或逐个目录覆盖文件编码设置。

- 将所有项目文件作为只读文件打开： 如果不想在 Understand 中编辑和保存此项目中的文件，请选中此选项(这个游动)
- 要分析文件的最大大小： 限制 Understand 分析的文件大小。您可以使用此选项排除非常大的文件。默认值为 10
  MB。如果您试图编辑过大而无法打开的文件，系统将提供一条错误信息。

== imports options

您可以从源项目中导入各种文件类型，以配置 Understand 项目中的目录和文件列表。

#figure(image("./img/2023-11-06 17.00.png"))

可导入以下文件类型：

- JSON 编译命令文件：compile_commands.json。
- Visual Studio 项目文件（包括一些旧格式）：
  \*.csproj、\*.dsp、\*.dsw、\*.sln、\*.vbproj、\*.vcp、\*.vcproj、\*.vfproj、\*.vcw、\*.vcxproj。
- Apple Xcode 项目文件： \*.xcodeproj。

要导入文件，请按照以下步骤操作：

1.

在 "project configuration"对话框的 "import" 类别中，单击 "add"。

2.

单击 ...，浏览上述类型之一的文件。

3.

选择文件并单击 "open"。您将看到所选文件中的项目设置列表。

#figure(image("./img/2023-11-06 17.01.png"))

4.
选择文件并单击打开。您应该会看到所选文件中的项目设置列表。 如果要排除 Understand 中属于源项目的任何文件，请单击添加并键入使用通配符匹配的字符串。

5.

单击 "OK" 保存更改。

6.

系统会询问您是否要分析该项目。 单击 "yes" 更新项目。

== history options

项目可以从 Git 仓库（下面的 Git 设置）和/或通过比较了解项目的先前版本获取历史信息。

#figure(image("./img/2023-11-06 17.08.png"))

Git 设置： Git 设置可在 "project configuration" 对话框的 "history" 类别的 Git 区域中进行控制。

- 版本库目录： 如果项目中的文件使用 Git

  单击 ...按钮，选择 Git 仓库中的顶级克隆文件夹。

如果使用 Git 进行版本控制，在使用新建项目向导创建 Understand 项目时还会提供额外的控制功能 。请按照该向导中的以下额外步骤操作：

1.

在启动 Understand 时看到的欢迎页面中单击 "new" 链接。或者从菜单中选择 file > new > project。

2

在向导的第一页，单击添加 Git 仓库。

#figure(image("./img/2023-11-06 17.09.png"))

3.

单击 "Directory" 字段旁的...，浏览到 Git 仓库的顶层。

#figure(image("./img/2023-11-06 17.12.png"))

4.

如果尚未将 Git 仓库克隆到本地文件系统，请选中 "clone from"复选框，并提供指向所需 Git 仓库的 URL。 点击 "OK" 后，"git
clone" 命令就会执行到指定的本地目录。 进度条会显示克隆操作的完成程度。 如果克隆仓库失败，对话框将保持打开并显示错误信息。

5.

如果想让 Understand 分析 Git 仓库中的特定提交版本，请单击 "freeze at commit"
字段旁边的...按钮，然后选择要分析的提交的注释（或粘贴 Git 提交的哈希字符串）。 此设置只能在创建项目时进行；要分析不同的提交，请创建新的
Understand 项目。 该设置只影响创建的 Understand 项目，对 Git 仓库没有任何影响。

6.

如果要将版本库的当前状态与另一个提交版本进行比较，请单击 "compare to" 字段旁边的...按钮， 然后选择要与之比较的提交的注释（或粘贴 Git
提交的哈希字符串）。 以后可以通过选择 compare > comparison projects 来更改此设置。

7.

指定要使用的 Git 设置后，单击 "OK"。

8.

继续使用新建项目向导。

Diff(差异, 增量)设置： 在 "project configuration" 对话框的 "history" 类别中的 "diff"区域，
您可以控制哪些类型的更改会被算作 "changed entities locator" 和比较树状图(comparison treemaps)中实体的更改。
这些设置不会影响对比图。

- 忽略空白(ignore whitespace)： 选中此复选框可忽略实体代码中对间距或制表符的任何更改。
- 忽略行尾(ignore line endings)： 选中此复选框可忽略实体代码中行结束符的任何更改。
- 忽略注释(ignore comments)： 选中此复选框可忽略实体代码中注释的任何更改。

== portability options

您可以使用 "项目配置 "对话框中的 "可移植性 "类别来控制 Understand 项目的可移植性。
可移植项目允许您与其他用户共享项目，并在移动源代码文件后保持不变地使用项目。

#figure(image("./img/2023-11-06 18.15.png"))

项目默认使用相对路径，使其更易于共享。 不过，如果 .und 项目文件夹和源代码位于不同的根文件夹或不同的驱动器上，则会使用绝对路径。
要使此类项目便于共享，可创建命名根目录。

例如，C:\src\proj1 和 C:\projects\proj1.und 位于不同的根文件夹中，因此项目将使用绝对路径。 相反，C:\src\proj1
和 C:\src\projects\proj1.und 位于同一个根文件夹（C:\src）中，因此项目将使用相对路径。

如果在默认位置（即源代码树的根目录）创建项目，项目应始终使用相对路径存储，并可自动共享。

如果选中 "执行可移植性"(Enforce Portability) 复选框，则 Understand 项目文件将包含所有目录的相对路径。 这些路径与
Understand 项目的位置（project.und 目录）相对。 如果将项目存储在源文件树中，并将其与源文件一起移动，则仍可使用该项目。

为了使项目具有可移植性，任何不属于源文件树但在项目中被引用的目录都应使用命名根映射。例如:

1.

在 "项目配置 "对话框的 "可移植性 "类别中，选中 "执行可移植性 "复选框。

2.

如果有任何未映射的目录，您将看到如下信息：

#figure(image("./img/2023-11-06 18.26.png"))

单击顶层未映射目录旁边的映射按钮。 系统将提供一个建议的命名根目录。 本例显示了该 Java 虚拟机目录的建议命名根目录。

#figure(image("./img/2023-11-06 18.28.png"))

根据需要更改 "已命名根目录"（例如，如果您的环境变量习惯性地指向该目录）。

3.

可以更改目录，使其指向系统中该目录的位置。

系统中该目录的位置。

4.

单击ok。

5.

当 "项目配置 "对话框中没有列出剩余的未映射目录时，单击 "确定"。

配置 "对话框中没有列出剩余的未映射目录时，单击 "确定"。

6.

共享项目时，告诉其他用户使用此对话框来指向他们自己的

这些目录的位置。

定义命名根目录后，可以在其他 Understand 对话框（如项目配置）和 "und "命令行中使用该名称。
例如，如果您想与通过网络使用不同路径引用项目文件的人员共享项目，这就非常有用。

如果更改了命名的根目录，项目很可能需要重新分析。

你可以定义操作系统环境变量，将其用作 Understand 中的命名根。 在操作系统层面，定义前缀为 "UND\_NAMED\_ROOT\_"的环境变量。 在
Understand 中引用命名根时，不会使用该前缀。 例如，假设你定义的系统环境变量如下：

UND_NAMED_ROOT_SOURCEDIR=c:\my\project\dir

这样，您在 Understand 中使用的命名根目录就是 "SOURCEDIR"。

如果使用的是 "und "命令行工具，"und "命令行中的命名根定义具有最高优先级。 其次是在操作系统级别定义为环境变量的命名根，最后是在
Understand 项目配置中定义的命名根。

== C/C++ options

如果您的项目包含 C 或 C++ 代码，您应首先决定使用 "严格 "还是 "模糊 "分析模式。

- 严格模式： 这种模式需要在 Understand 中进行更多的初始设置，但可以提供最准确的结果。它包括对模板和重载函数的支持。它支持 C++11/14 和
  Objective C/C++（适用于 Mac OS 和 iOS）。必须正确指定包含路径和宏，否则 Understand
  可能会生成无效或不完整的结果。(CUDA 文件 -.cu 和 .cuh - 也可作为使用严格模式的项目的一部分进行分析）。

- 模糊模式： 该模式创建 Understand
  项目的速度更快，宽容度更高，但结果可能不够准确。如果你的源代码可能不完整或无法编译，或者你只是想在工作时快速查看代码，这可能是更好的选择。模糊模式不能很好地处理重载函数或模板，也不支持较新的语言标准。

要选择模式，请在 "项目配置 "对话框中选择 C++ > options 类别，然后选择希望项目使用的模式。

#figure(image("./img/2023-11-06 18.33.png"))

=== 严格的 C/C++ mode options

如果在项目配置对话框的 C++ > 选项类别中使用严格模式，则可以在以下类别中设置选项：

- 编译器
- 语言标准
- 优化
- 目标语言
- 解决

该对话框的 "编译器 "部分默认与运行 Understand 的平台相匹配。 这些字段用于控制分析哪些扩展（如预处理器定义、头文件搜索路径和语言语法）。
如果您在此处的选择与所使用的代码不匹配，分析过程中很可能会出错。 如果您的代码是为多个目标构建的，请使用这些选项在目标环境之间切换，以进行代码分析。
编译器选项如下：

#figure(image("./img/2023-11-06 18.34.png"))

编译器： 选择您使用的编译器。如果您的编译器未列出，请选择行为类似的编译器。 Clang、GCC 和 MSVC 选项提供以下附加字段，以提供有关目标机的信息。

- 架构： 选择用于编写项目的芯片架构。支持的选项包括 ARM、PowerPC64 和 x86_64。使用 "未知 "选项可选择最通用的 C/C++ 代码分析。
- 供应商： 选择芯片架构的来源。例如未知、Apple、PC 和 SCEI（索尼 PlayStation）。使用 "未知 "选项可选择最通用的 C/C++
  代码分析。
- 操作系统： 选择该程序将在哪个操作系统下使用。例如 iOS、Linux 和 Win32。
- Env：选择用于构建此项目的构建环境。例如 GNU、EABI 和 Mach-O。对于大多数项目，默认值为 "未知 "即可。

The Language Standard options are as follows:

#figure(image("./img/2023-11-06 18.36.png"))

- C Language Standard: Select the C standard to use when analyzing your C code.
- C++ Language Standard: Select the C++ standard to use when analyzing your C++
  code.

The Optimize options are as follows:

#figure(image("./img/2023-11-06 18.37.png"))

- 为对象`数据成员`创建唯一实体： 如果希望为 C++ 类数据成员的每个唯一实例创建单独的实体，请选中此复选框。默认情况下，为每个数据成员创建一个实体。
- 为对象`函数成员`创建唯一实体： 如果您希望为 C++ 类函数成员的每个唯一实例创建单独的实体，请选中此复选框。默认情况下，为每个函数成员创建一个实体。
- 在非活动代码中创建引用： 如果希望排除被当前宏设置 IFDEFed
  掉的代码的交叉引用信息，请关闭此选项。默认情况下，该选项处于打开状态，包含非活动代码的交叉引用信息。
- 保存与实体相关的注释： 如果实体前后的源代码注释应与该实体相关联，则选中该复选框。默认为打开。
- 保存宏扩展文本： 如果希望右键单击宏并从上下文菜单中选择交互式报告 > 扩展宏，以查看宏的扩展方式，请选中此复选框。
- 简化控制流图中的宏展开： 选中此复选框可避免为从宏定义展开的控制流结构创建节点。
- 串行启动工作进程：
  严格分析器会为其分析的每个源文件启动一个单独的工作进程。默认情况下，工作进程是并行运行的。如果不完成工作进程，请选中此选项，使它们以串行方式运行。
- 警告： 选择需要报告多少严格分析器提供的警告。这些警告会指出源代码中的潜在问题。选择查看部分或全部警告可能会在一定程度上减慢项目分析速度。
- 在\_\_分钟后关闭工作进程： 严格分析器会为其分析的每个源文件启动一个单独的工作进程。如果任何文件的分析时间过长，Understand
  会杀死该进程，并且不会生成该文件的分析数据。对于未分析的文件，Understand
  会在分析日志中打印一条错误信息，然后继续分析下一个文件。您可以通过使用前向声明和删除包含等方法来减少分析负荷。或者，也可以使用此选项增加进程被杀死前的分析时间。默认情况下，工作进程分析文件的时间最长为
  2 分钟。

The Objective-C options are as follows

#figure(image("./img/2023-11-06 18.41.png"))

- 内存管理： 如果使用 Objective-C，请选择使用的内存管理模式。选项包括 MMR（手动保留-释放）、ARC（自动引用计数）和 GC（垃圾回收）。

CUDA 选项如下：

#figure(image("./img/2023-11-06 18.42.png"))

GPU 架构： 选择本项目使用的 GPU 架构的计算能力（也称为 SM 版本）（如果有）。这与 NVIDIA 的 nvcc sm
标志相对应。支持的计算能力范围从 sm_20 到 sm_80。

The Resolve options are as follows:

#figure(image("./img/2023-11-06 18.44.png"))

合并重复的函数定义： 如果分析正在为相同（非重载）函数的多个定义创建重复实体，请选中此复选框。

=== 模糊的 C/C++ mode options

如果在项目配置对话框的 C++ > 选项类别中使用模糊模式，则可以在以下类别中设置选项：

- 编译器
- 多语言链接
- 优化
- 解决

该对话框的编译器部分允许您选择编译器和项目分析的包含路径。编译器选项如下：

#figure(image("./img/2023-11-06 18.45.png"))

- 编译器： 选择使用的编译器/平台。支持许多不同的编译器。您的选择会影响 Understand 分析项目的方式。请注意，并非特定编译器的所有功能都能得到处理。
- 编译器包含路径： 键入或粘贴编译器用于查找包含文件的路径。例如，%include%。
- 允许嵌套注释： 默认为关闭。如果打开，则允许嵌套 C 风格 (/* */) 注释。ANSI 标准不允许这样做，但有些编译器允许。

多语言链接选项如下：

#figure(image("./img/2023-11-06 18.46.png"))

- 在可外部链接的实体名称前加上： 您可以选择键入一个字符串作为前缀，用于引用其他源代码语言中的所有可链接实体。
- 附加外部可链接实体名称： 您可以选择键入一个字符串作为后缀，以便在其他源代码语言中引用所有可链接实体。

优化选项如下：

- 创建隐式特殊成员函数：
  如果您希望在分析项目时创建默认构造函数和析构函数，并在类和结构实体的源代码中未声明时给予隐式声明引用，请选中此复选框。该选项可在调用时为分析器提供实体引用。默认为关闭。
- 在非活动代码中创建引用： 如果希望排除被当前宏设置 IFDEFed
  掉的代码的交叉引用信息，请关闭此选项。默认情况下，该选项处于打开状态，包含非活动代码的交叉引用信息。
- 创建本地对象引用： 默认情况下，所有本地对象声明都包含在项目分析中。如果希望将函数中声明的变量排除在分析之外，请关闭该选项。这样，在生成的 HTML
  输出中就可以包含或排除包含在分析中的本地对象。在 Understand 主窗口的 HTML 输出中指定是否包含本地对象。
- 在宏扩展过程中创建对宏的引用：
  选中此复选框会在宏扩展过程中存储引用。在某些情况下，这很有用。请注意，启用此选项会增加许多引用，使项目数据库变大，速度变慢。默认为关闭。
- 创建参数引用： 如果希望排除参数的交叉引用信息，请关闭此选项。默认情况下，该选项为打开，包含所有参数的交叉引用信息。
- 在内联程序集中创建引用： 如果希望为代码中的任何 \#asm 预处理器宏创建汇编代码交叉引用，请选中此复选框。
- 保存与实体相关的注释： 如果实体前后的源代码注释应与该实体相关联，请选中复选框。默认为打开。
- 保存重复引用： 默认情况下，重复的交叉引用会浓缩为一个交叉引用。要保留重复引用，请选中此复选框。
- 保存宏扩展文本： 如果希望右键单击宏并从上下文菜单中选择交互式报告 > 展开宏，以查看宏的展开方式，请选中此复选框。
- 使用包含缓存：
  默认情况下，在分析阶段会缓存包含文件，因为它们经常在多个源文件中被引用。这会加快分析速度，但也会占用更多内存。如果在分析过程中遇到内存使用过多的问题，请关闭此选项。需要注意的是，在某些情况下，开启或关闭包含缓存也会影响分析结果，尤其是在包含操作取决于包含位置的情况下。

解决选项如下

#figure(image("./img/2023-11-06 18.47.png"))

- 合并重复的函数定义： 如果分析正在为相同（非重载）函数的多个定义创建重复实体，请选中此复选框。

=== C++ > include category

通过项目配置对话框（project > configure peoject）中的 C++ >
includes，可以指定包含目录。您可以指定多个目录来搜索项目中使用的包含文件。

包含文件目录的配置对于提高项目分析的准确性非常重要。有关配置这些目录的方法

包含路径不会递归搜索；也就是说，不会搜索任何子目录中的包含文件，除非在包含目录列表中明确指定了该子目录。

要添加目录，请单击 "new"按钮，然后单击"... "按钮，浏览到该目录，然后单击 "ok"。

#figure(image("./img/2023-11-06 18.48.png"))

在分析过程中，将按照对话框中出现的顺序搜索包含目录。您可以单击 "move up"或 "move down" 更改搜索目录的顺序。

通常情况下，只有与项目不直接相关的包含文件（如系统级包含文件）以及不想在此进行全面分析的包含文件才会在此定义。对于要分析的项目级包含文件，请将这些包含文件作为源文件添加到文件类别中。

你可以在包含文件路径中使用环境变量。在 Unix 中使用 \$var 格式，在 Windows 中使用 %var% 格式。 也可以在包含文件路径中使用命名根

单击 "import"或 "export" 并选择文件，即可从文本文件导入或导出包含目录列表。 文件每行必须包含一个目录路径。
(在所有此类导入的文本文件中，文件中某一行第一列的 `#` 号表示注释。 可以使用完整路径或相对路径。 任何相对路径都是相对于项目文件而言的）。

C++ > 包含（C++ > Includes）类别根据使用严格模式还是模糊模式提供了不同的选项：

- Sysroot/SDK：（仅限严格模式）该字段允许您指定默认头文件搜索路径的根目录。例如，如果将 Sysroot 设置为 /dir，分析器将搜索
  /dir/usr/include，而不是 /usr/include。如果使用交叉编译器或根据与主机不同的 SDK 构建，这个选项非常有用。该选项与
  gcc、icc 和 clang 等编译器中的 --sysroot 命令行选项相对应。该选项适用于所有支持的平台。
- 将找到的includes添加到源代码列表：
  (两种模式）启用该选项后，在项目分析过程中发现的包含文件将自动添加到项目中。这样，您就可以看到有关这些包含文件的更详细信息。默认为开启。
- 将找到的系统includes添加到源代码列表： (两种模式）如果选择将找到的包含文件添加到源代码列表，还可以选择是否添加系统包含文件。默认为关闭。
- Search for include files among project
  files:（在项目文件中搜索包含文件）：（两种模式）该选项指示分析仪在项目文件中寻找丢失的包含文件，作为最后的手段。默认为开启。
- 将系统包含文件视为用户包含文件： (仅适用于模糊模式）该选项指示分析器使用与普通包含文件（用引号包围）相同的策略查找系统包含文件（用 \< \>
  包围）。如果关闭该项，分析器将只在编译器配置定义的目录中查找系统包含。默认为打开。
- 忽略包含名称中的目录：（两种模式）如果想忽略 \#include 语句中的任何目录规范，而使用项目中的任何包含文件，请选中此选项。默认为关闭。
- 按内容而非路径比较文件：（仅限严格模式）如果希望按内容而非文件路径比较包含文件，请选中此选项。默认为关闭。
- 单独分析未包含的头文件：（仅限严格模式）选中此选项可省略对项目中 C/C++ 文件未包含的头文件的分析。

=== C++ > include > automatic includes category

(严格模式和模糊模式）在 C++ > includes > automatic includes
类别中，您可以指定应包含在项目中每个文件之前的include文件。

要添加文件，请单击新建并浏览文件。 然后单击 "open"。 单击 "import" 或 "export"
并选择每行包含一个文件路径的文本文件，即可从文本文件导入或导出自动包含文件列表。

使用 "move up"和 "move down" 可更改包含文件的顺序。

=== C++ > include > system includes category

(仅限严格模式）在 C++ > 包含 > 系统包含类别中，您可以指定源代码使用的系统路径。

要在目录及其子目录中搜索框架，请单击 "search"。 这将打开 "Missing Header Files"工具

要添加特定位置，请单击新建并浏览文件夹。 然后单击 "select folder"，再单击 "ok"。
单击导入或导出，选择每行包含一个路径的文本文件，即可从文本文件导入或导出框架 文件夹列表。 使用 "move up"和 "move
down"可更改文件夹的处理顺序。

=== C++ > include > frameworks category

(仅限严格模式）在 C++ > includes > frameworks 类别中，可以指定项目使用的 Mac OS 和 iOS 框架路径。

要在目录及其子目录中搜索框架，请单击 "search"。单击 "ok" 将找到的目录添加到框架列表中。

要添加位置，请单击 "new"并浏览文件夹。 然后单击 "select floder"，再单击 "ok"。
单击导入或导出，选择每行包含一个路径的文本文件，即可从文本文件导入或导出框架文件夹列表。

使用 "move up"和 "move down"可更改文件夹的处理顺序。

=== C++ > include > ignore category

(仅限模糊模式）在 C++ > 包括 > 忽略类别中，您可以指定希望在分析过程中忽略的单个包括文件。

#figure(image("./img/2023-11-06 19.04.png"))

要添加要忽略的文件，请单击新建并键入包含文件的文件名。 然后单击 "ok"。文件名可以使用通配符（如 moduleZ\_\*.h）来匹配多个文件。

分析过程中出现提示时，您选择忽略的任何缺失文件都会添加到此处。
您可以从文本文件中导入或导出要忽略的文件列表，方法是单击导入或导出，然后选择每行包含一个文件名的文本文件。

=== C++ > include > replacement text

(仅限模糊模式）在 C++ > include > replacement text 类别中，您可以指定includes文件文本中应替换的文本。

例如，您可以使用此功能将 [sys\$somewhere] 这样的 VAX/VMS 包含路径替换为有效的 Unix 或 Windows 路径，而无需修改源代码。

要添加项目，请在includes字符串字段中键入实际包含文件中的字符串。在 "replace with" 字段中键入要替换的文本。然后点击确定。

#figure(image("./img/2023-11-06 19.06.png"))

单击 "import" 或 "export" 并选择文件，即可从文本文件导入或导出包含字符串及其替换列表。 文件必须每行包含一个包含字符串。文件应该用等号
(=) 分隔包含字符串及其替换字符串。

使用 "move up" 和 "move down" 可更改替换的顺序。

=== C++ > macros category

C 源代码中经常会出现一些预处理器指令，为 C 编译器提供指令和选项。 以下指令会影响软件的操作和分析方式：

```cpp
#define INSTRUMENT_CODE
#ifdef INSTRUMENT_CODE
  ...
  expr
  ...
#endif
```

宏通常是通过包含文件（.h 文件）中的指令（\#define）定义的，或者是通过编译器（通常使用 -D 选项）传入的。

通过 "project configuration" 对话框（使用 "project" > "configure project" 打开）中的 "C++" > "macros"
类别，可以定义编译代码时使用的预处理器宏。

要添加宏定义，请单击 "new" 按钮并键入宏的名称和可选的定义。 然后单击 "ok"。

请注意，宏必须有名称，但定义是可选的。已定义但没有定义值的宏通常与 `#ifdef` 预处理器语句结合使用，以查看是否定义了宏。

Understand
需要知道应设置哪些宏定义，才能成功分析软件。如果源代码中使用的任何宏未被定义，您将看到一个未定义宏按钮。您可以单击该按钮并使用该工具定义其他宏。请参阅第 90
页的使用未定义的宏工具。

注意

自动支持许多预处理器宏。除常用宏外，如果使用 "模糊 "分析器，Understand 还支持以下嵌入式汇编代码的宏格式。(严格的 C/C++
分析器不支持这些宏格式）。

```cpp
#asm(<embedded assembly code>);
#asm "<embedded assembly code>";
#asm <embedded assembly code>
#endasm
```

单击 "import" 或 "export" 并选择文件，即可从文本文件导入或导出宏列表及其可选定义。 文件每行必须包含一个宏定义。 文件中某一行第一列的
`#` 号表示注释。文件应以等号 (=) 分隔宏名和宏定义。例如，DEBUG=true。

宏定义的优先级从低到高依次为

1.

内置语言宏（\_\_FILE\_\_ 等）

2.

编译器配置文件

3.

同步 Visual Studio 项目中的宏定义

4.

编译器定义的未定义（通过配置未定义按钮）

5.

项目定义（宏类别）

6.

使用 -define 在命令行中定义

7.

在源文件中定义（在源文件中 `#define / #undefine`）

=== C++ > macros > undefines category

您可以在项目配置对话框的 C++ > macros > undefines 类别中列出未定义的宏。 单击新建并键入不想定义的宏的名称。然后单击确定。

#figure(image("./img/2023-11-06 19.14.png"))

单击导入或导出并选择文件，即可从文本文件导入或导出未定义宏列表。 文件每行必须包含一个宏名称。 文件中某一行第一列的 `#` 号表示注释。

= setting options

本章介绍如何控制 understand 的行为。这些设置适用于您在计算机上处理的所有项目。

== understand options dialog

Understand 允许您使用 "Understand options" 对话框控制其操作的多个方面。 要打开此对话框，请选择 "tool" > "options"。
(在 MacOS 上，由于操作系统的习惯，该命令为 "understand" > "perference"）该对话框提供的选项可按右侧所示的类别进行设置：

#figure(image("./img/2023-11-06 19.27.png"))

下面的小节将介绍每个类别：

- General Category
- User Interface Category
- Key Bindings Category
- CodeCheck Category
- Analyze Category
- Dependency Category
- Editor Category
- Graphs Category
- Annotations Category
- User Tools Category

您可以使用 "search" 框查找选项。 例如，键入 "color" 并单击向右箭头，即可浏览与颜色相关的选项类别。

#figure(image("./img/2023-11-06 19.33.png"))

单击 "restore defaults" 恢复默认设置。系统会询问您是要还原所有设置，还是只还原当前所选类别的设置。

== general category

以下选项可通过 tools > option 对话框的 general 类别进行控制：

- 应用程序字体： 要更改 understand 对话框和列表中使用的字体，请单击 "更改字体 "并选择要使用的字体、字体样式和字体大小，然后单击 "确定"。
- 启动时显示欢迎页面： 如果选中（默认为打开），则启动 Understand 时，欢迎选项卡将显示在文档区域。
- 当应用程序失去焦点时保存所有已修改的编辑器窗口：如果选中此选项（默认为关闭），那么当您移动到另一个应用程序时，您所做更改的任何编辑器窗口都会自动保存其内容。

#figure(image("./img/2023-11-06 19.35.png"))

- 启动时打开上一个项目：
  如果选中（默认为关闭），则在没有指定其他项目的情况下，启动understand时会自动打开最近打开的项目。如果你通常只使用一个项目，这是一个非常有用的选项。
- 使用默认工作目录： 如果选中（默认为关闭），则可以选择另一个默认目录。这将是浏览其他目录时的起始目录，也是与相对目录规范相关的目录。默认为保存项目的目录。
- 启用 NTFS 文件系统的权限检查： 如果选中此复选框，则在使用编辑器修改文件时，将检查 NTFS
  文件系统的文件权限。该选项默认为关闭，因为在某些情况下，这种检查会大大降低性能。
- 允许在密集处理过程中进行交互： 如果选中此选项（默认为打开），则可以在 Understand
  执行后台处理时与之交互。您的交互事件将按照您指定的毫秒间隔进行处理。
- 允许每 n 毫秒处理一次事件： 指定交互事件的处理频率。默认情况下，此类事件每 100 毫秒（0.1 秒）处理一次。您可以通过降低该值来提高后台处理性能。
- 设置文件夹： 指定 Understand 内部使用但与特定项目无关的文件的存储位置。您可以浏览更改此位置。您需要重新启动 Understand
  才能使对该目录位置的更改生效。其他解析数据（parse.udb 文件）和其他本地数据也存储在此处指定的位置。
- 备份文件：指定备份 Understand 初始化文件的位置。默认情况下，该文件是设置文件夹中的 Understand_bak.ini 文件。您可以单击 "保存设置 "将所有当前选项设置保存到该文件。如果要加载不同的设置，请更改 "备份文件 "位置，指向不同的文件或已编辑的文件，然后单击 "加载设置"。

*NOTE* Understand 会根据系统设置支持暗模式。如果您在正常模式和黑暗模式之间切换系统，请重新启动 Understand，使其切换到新模式。

== user interface category

user interface 类别包含一般选项和以下子类别中的选项：

- User Interface > Lists Category
- User Interface > Alerts Category
- User Interface > Windows Category
- User Interface > Application Styles Category

可以在 tools > option 对话框的 user interface 类别中设置以下选项：

- 动画窗口/抽屉： 如果选中（默认为打开），打开和关闭窗口以及标签区域（抽屉）时将显示动画。您可以选择比默认速度更快或更慢的速度。
- 显示标签： 如果选中（默认为打开），则在文档区域的顶部会为该区域中打开的每个窗口显示选项卡。这包括源代码编辑器窗口、图形视图和其他窗口。
- 文档关闭时，使用 "most recently use"顺序激活下一个选项卡：
  如果选中此复选框，则在关闭另一个窗口时，最近使用的窗口将成为当前窗口。如果未选中此框（默认值），则左侧的选项卡将成为当前窗口。
- 格式化： 选择您希望窗口、选项卡和选择器文件标题区域中的文件名是短名、长名（全路径），还是相对于项目的文件名。
- 命令窗口字体： 控制 "Run a Command" 对话框中使用的字体，以显示您发出的命令的输出结果。
- 创建新项目时使用新建项目向导： file > new > project时，选中此复选框将使用新建项目向导
> 项目时，将使用新建项目向导。如果取消选中此框，则可以指定项目位置和文件名，然后使用完整的 "project configuration"对话框。

=== user interface > lists category

可以在tools > user interface > Lists category of the Tools > Options dialog：

- 最近文件列表： 默认情况下，最近使用的文件列表中显示五个项目。您可以在此更改默认值。您可以从列表中删除不想显示的项目。请注意，您可以选择文件 > 最近文件 >
  清除菜单来清除最近文件的历史记录。
- 最近项目列表： 默认情况下，最近使用的项目列表中会显示五个项目。您可以在此更改默认值。您可以从列表中删除不想显示的项目。请注意，您可以选择文件 > 最近项目 >
  清除菜单来清除最近项目的历史记录。

#figure(image("./img/2023-11-06 19.44.png"))

=== user interface > alerts category

可以在tools > options对话框 的 user interface> alerts 类别中设置以下选项：

这些选项可用于重新启用已在警告对话框中禁用的警告。

- 解析时保存： 选择在分析项目时如何处理已更改但未保存的源文件。默认设置是始终提示您选择是否保存文件。您也可以选择自动保存已更改的文件或不保存已更改的文件。
- 按命令保存： 选择在运行命令时如何处理已更改但未保存的源文件。默认设置是始终提示您选择是否保存文件。您也可以选择自动保存已更改的文件或不保存已更改的文件。
- 关闭当前项目前提示： 如果选中此选项（默认值），则在尝试打开其他项目时会询问您是否要关闭当前项目和所有相关窗口。
- 违规次数超过 300,000 时提示：如果选中（默认），则会询问您是否要在检测到 300,000 次违规时继续进行 CodeCheck。
- 分析完成时发出蜂鸣声： 默认情况下，分析完成时会发出提示音。
- 实体过滤条目不匹配时发出提示音： 默认情况下，如果您在 "实体过滤器 "中键入的过滤器与所选类型的任何实体不匹配，计算机会发出提示音。您可以取消选中此选项来关闭这些提示音。
- 对所有其他操作发出蜂鸣声： 默认情况下，其他操作（如完成 "查找 "命令）不会发出提示音。选中该复选框可将声音通知扩展到其他操作。

#figure(image("./img/2023-11-06 19.58.png"))

=== user interface > windows category

以下选项可在 tools > options 对话框的 user interface > windows类别中设置：

#figure(image("./img/2023-11-06 20.09.png"))

您可以为不同类型的窗口选择各种选项。

- 编辑器窗口： 选择以捕获的窗口形式在 "理解 "窗口的文档区域内打开源文件（MDI 窗口），还是以可在桌面上任意移动的释放窗口形式打开源文件（SDI
  窗口）。默认为捕获。
- 在文件搜索窗口中查找：
  - 显示： 选择在最近搜索的下拉列表中列出多少项目。 默认为 5。
  - 目录和查找列表： 选择最近使用的搜索字符串列表是显示所有搜索，还是只显示当前项目中使用的搜索。
- 图形窗口： 选择将图形视图作为 Understand 窗口文档区域内的捕获窗口（MDI 窗口）打开，还是作为可在桌面上任意移动的释放窗口（SDI
  窗口）打开。默认为捕获。
- 信息 浏览器窗口： 在引用中显示代码片段工具提示：
  选择当您指向信息浏览器参考资料列表中显示的行号时，是否希望在悬停文本中显示几行代码。如果信息浏览器不显示行号，请单击 "reference"
  旁边的下拉箭头，然后选择 reference > full。
- 已释放窗口： 如果您已从文档区域释放窗口，并希望 Understand 记住窗口位置，请单击 "save released windows positions"
  按钮。如果您使用此按钮保存了位置，则可以使用 "清除保存的位置 "按钮来忘记这些位置。
- 保持已释放窗口向前： 如果希望释放的窗口保持在其他窗口的上方，请选中此复选框。

=== user interface > application styles category

以下选项可在 "tools" > "options" 对话框的 "user interface" > "user interface"类别中设置：

您可以为不同类型的窗口选择各种选项。

- 使用编辑器颜色： 单击此按钮可将 editor > styles 类别中的源编辑器颜色应用到项目视图，如信息浏览器。
- 实体颜色： 这些颜色用于 "信息浏览器 "等项目视图。单击列表中项目旁边的颜色方块。使用 "选择颜色 "对话框为该项目选择新的颜色。其他颜色来自系统设置，尤其是
  Windows 系统，或者在此对话框的其他类别中设置。
- 树行缩进： 可以更改分层树形显示中的缩进量。
- 在表格和列表中使用交替行颜色： 如果选中（默认为关闭），列表和表格（如 CodeCheck 的结果）的交替行将使用阴影。
- 在富文本树中使用交替行颜色： 默认情况下，格式化的结果都具有相同的背景颜色。通过选中此复选框，可以使每隔一行的背景颜色稍深一些。

#figure(image("./img/2023-11-06 20.22.png"))

== key bindings category

Understand 中按键的功能可以自定义。通过 tools > options 对话框中的 key bindings 类别，您可以选择按键在
Understand 中的工作方式：

#figure(image("./img/2023-11-06 20.26.png"))

- 键盘方案： 此字段允许您选择与其他应用程序类似的键盘设置组。默认设置是 Understand 的本地设置。其他选择包括 Visual Studio .NET
  键绑定和 Emacs 编辑器键绑定。如果您选择了一个方案并单击 "ok"，则将使用该方案。如果对提供的方案之一进行更改，该方案将成为 "自定义 "方案。你可以点击 "另存为 "来命名和保存你的按键绑定方案。
- 按名称搜索： 键入命令名称的一部分，点击 🔍 后将显示包含该字符串的命令。
- 按键绑定搜索： 单击字段并按下要搜索的键序。然后点击查找图标 🔍。例如，按 F3 键可查找包含 F3 键的所有按键绑定。
- 组件： Understand 的不同部分有不同的按键行为。表中的 "component "列表示特定命令的可用位置。在对话框左侧的 "按键绑定 "主类别下选择一个子类别，即可查看特定组件的按键绑定。(应用程序组件适用于未列出的对话框和项目）。

要查看当前所有按键绑定的完整列表，请选择 help > key bindings

要更改某个操作的键序，请按以下步骤操作：

+ 使用 component categories 或 "search" 字段，找到要更改按键绑定的命令。
+ 将光标放在要修改的命令的主要序列或备用列中。
+ 按下要执行该操作的组合键。
+ 您不能使用正常的编辑键（如 Backspace 或 Delete）来编辑这些字段中显示的按键。要删除输入的组合键，请单击 "X"
+ 当你将焦点从已更改的组合键上移开时，如果你选择的组合键已被使用，你可能会看到一条 警告信息。
+ 单击 "是 "进行更改，单击 "否 "取消更改。如果不想保存更改，请使用 "恢复默认值 "或 "取消 "按钮。或者，你也可以从提供的键盘方案中选择一个，回到默认的按键绑定集。

#figure(image("./img/2023-11-06 20.34.png"))

== CodeCheck category

在 tools > options 对话框的 CodeCheck 类别中设置颜色，以指定 CodeCheck
窗口的颜色。有关更多信息，请参阅CodeCheck。

#figure(image("./img/2023-11-06 20.38.png"))

单击列表中项目旁边的颜色方块。使用选择颜色对话框为该类型的项目选择新颜色。

== analyze category

通过 tools > options 对话框中的 "分析 "类别，可以指定项目分析方式的选项。

- 分析期间显示日志： 默认情况下，在执行分析时不显示分析日志。如果选中此复选框，则会在分析运行时显示分析日志区域。
- 显示标准库文件： 对于通过 Understand 分析其标准库的语言（如
  Ada），如果选中此复选框，标准库文件将显示在分析日志中。默认情况下，该复选框未选中，分析日志较短。

#figure(image("./img/2023-11-06 20.40.png"))

== dependency category

通过 tools > options 对话框的依赖关系类别，可以设置与依赖关系浏览器、依赖关系图 和 依赖关系 导出相关的选项。

- 排除标准实体： 默认情况下，依赖关系图和依赖关系浏览器不包括标准库中的实体。取消选中该选项可包含此类标准实体。
- 使用包含/导入引用： 默认情况下，"includes"和 "import"
  被视为依赖关系。不过，如果这些关系是构建所需的，但在逻辑上并不依赖，则可能需要从依赖关系列表中省略。
- 编译时与链接时的依赖关系：
  选择是将实体显示为依赖于声明实体的头文件（编译时依赖），还是依赖于定义实体的源代码文件（链接时依赖）。这只适用于区分声明和定义的语言，如 C 语言。
- Cytoscape 应用程序位置： 您可以浏览 Cytoscape (www.cytoscape.org)
  的安装位置，这是一个用于分析和可视化的免费开源程序。指定此位置可让 Understand 打开 Cytoscape 以查看按照第 139 页的 "将依赖关系导出到
  Cytoscape "中所述导出的依赖关系 XML 文件。

#figure(image("./img/2023-11-06 20.42.png"))

== editor category

以下选项可控制源代码编辑器窗口的一般行为。这些选项可在 tools > options 对话框的 editor 类别中设置：

#figure(image("./img/2023-11-06 20.45.png"))

- 默认样式： 使用字体下拉列表为源代码编辑器窗口选择字体。显示的字体是系统上可用的固定宽度字体。为源编辑器文本选择大小。如果选中 Antialias
  复选框，则字体将被平滑处理。该区域的字段设置了默认大小。您可以选择 view > zoom 菜单选项之一，按文件更改默认大小。
- 文件模式： 选择保存源文件时使用的编码类型，以及希望使用的行结束符。支持多种编码格式。系统 "编码选项使用为操作系统定义的编码格式。只有当其他应用程序在打开或显示
  Understand 创建的文件时出现问题时，才需要更改这些设置。 默认情况下，这些设置只适用于您创建的新文件，包括文本和 CSV
  文件。现有文件保留以前的格式。但是，如果选中 "转换现有行结束符 "复选框，保存的文件将转换为此处选择的格式。
  - Windows 的行结束符是回车 (\\r) 和换行 (\\n) 的组合，也称为 CR/LF。打开文件时，CR、CR、LF 序列被解释为单行结束。
  - Unix 行结束符以换行 (\\n)，也称为换行符 (LF) 结束。
  - 经典的 Macintosh 行尾以一个回车 (CR) 结束。
  如果选中 "convert tabs to spaces"复选框，在保存文件时，制表符将被转换为 "宽度 "字段中指定的空格数。此外，如果选中 "在文件末尾添加换行符（如果没有）"复选框，则在保存文件时会为没有换行符的文件添加一个换行符（默认选中）。如果选中删除尾部空白复选框，则在保存文件时会自动删除行尾的空格或制表符。
- 页面指南： 选中 "显示页面指南 "复选框，可在定义的行宽（即代码的右边缘）处显示一行类似于缩进指南的内容。将列设置为您希望看到的字符宽度。
- 粗线： 如果希望突出显示光标所在的整行，请选中高亮显示粗心线复选框。
- 缩进： 如果希望用虚线显示应缩进行的列，请选中显示缩进指南框。

#figure(image("./img/2023-11-06 20.50.png"))

默认情况下，"insert spaces instead of tabs"方框处于打开状态，按下 `<Tab>` 时，空格将被添加到源文件中。

对于缩进宽度，指定缩进级别的列数。对于制表符宽度，指定每个制表符停止的列数。 例如，如果将 "制表符宽度 "设置为 4，则每个 `<Tab>` 都会向右移动 4
列。 如果将缩进宽度设置为 6，制表宽度设置为 4，则每个自动缩进级别由一个 `<Tab>` 和 2 个空格组成。
您可以为特定文件设置制表符宽度，以覆盖整个项目的制表符宽度。 此外，有关高级缩进选项，请参阅 editor > advanced category

- 空白： 选择是否要查看有关空白字符的指示符。点表示空格，箭头表示制表符。可以选择不可见（默认）、始终可见或缩进后可见。选中 "显示行尾 "复选框可查看强制换行的字符。
- 边距： 在源代码编辑器窗口中显示或隐藏以下左侧边距列：
  - 行号：（默认为打开）在源视图中打开行号。
  - 责备：（默认关闭）显示 Git 责备信息。详情请参阅 "探索 Git 历史"。
  - 折叠：（默认开启）开启 "折叠 "源代码实体块的功能。

#figure(image("./img/2023-11-06 20.59.13.png"))

- 状态：（默认为打开）如果行已修改但未保存，则显示更改栏。
- 书签：（默认开启）显示行号旁边的书签（红色箭头）。

=== editor > advanced category

以下选项可控制源代码编辑器窗口的更高级行为。这些选项可在 tools > options 对话框的 editor > advanced 类别中设置。

打印： 以下选项可控制从编辑器窗口打印源代码时的外观：

- 字体大小： 选择打印时使用的源代码大小。要放大或缩小单个源代码窗口，请参阅第 179 页。
- 颜色模式： 选择用于打印的颜色模式。可选项如下。请注意，只有在使用彩色打印机且打印机驱动程序设置为彩色打印时，才能打印黑白以外的颜色。
  - 正常 "与当前显示外观相匹配。
  - 反色光 "将黑色打印为白色，将白色打印为黑色。如果您将背景设置为深色，将文本设置为浅色，则此功能非常有用。
  - 白底黑字 "在白色背景上打印黑色代码，与当前显示外观无关。
  - 白底彩色 "在白色背景上打印彩色代码，与当前显示外观无关。

#figure(image("./img/2023-11-07 08.27.png"))

- wrap mode：
  选择打印时要使用的换行模式。默认情况下是将单词换行到下一行，但您也可以选择截断行或在字符级换行，即跨行换行。显示的换行符仅用于打印，实际换行符不会添加到源文件中。
- 打印绝对文件名：如果您希望在源文件打印输出的顶部打印完整的文件路径，而不仅仅是文件名，请选中此复选框。
- 日期： 选择打印时显示文件最后修改日期还是当前日期。默认为当前日期。
- 日期格式： 选择以长格式还是短格式打印日期。将使用系统首选的长短日期格式。
- 换页打印新页面： 如果选中该复选框，源代码文件中的换页符将导致分页。如果取消选中该复选框，换页字符将打印为 "FF"，不会出现分页。

#figure(image("./img/2023-11-07 08.28.png"))

通过radar scroll bar区域，可以在源代码编辑器窗口的滚动条中显示或隐藏标记，这些标记用于指示各种内容的位置。 通过取消选中radar scroll
bar，可以禁用所有雷达高亮显示。 查找高亮框控制使用 Ctrl+F 查找字符串的高亮显示（默认为蓝色）。
引用高亮框控制通过引用（例如使用信息浏览器）找到的实体的高亮显示（默认为蓝色）。 已修改行高亮框控制已修改但未保存行的高亮显示（默认为橙色）。
未提交行框控制已保存但未在 Git 中提交的行的高亮显示（详见"探索 Git 历史记录"）。 这些高亮的颜色可以通过editor > style进行更改。

#figure(image("./img/2023-11-07 08.31.png"))

copy-and-paste area可让你在将代码复制粘贴到文字处理器时控制文本的格式。

- 在富文本中包含行号会粘贴行号（粗体）。HTML 用于格式化粘贴的文本。该选项默认为关闭。
- 使用预格式化空白 使用 HTML `<pre>` 标记粘贴代码以保留空白。如果禁用此选项，则使用 &nbsp;（非中断空格）和 `<br>`
  标记保留空白。某些应用程序可能不尊重 `<pre>` 标记，在这种情况下，你可以禁用此选项来强制格式匹配。

auto-complete选项可自动完成您在编辑器中键入的关键字和实体。 在您输入时，文本下方会显示单词。 您可以向下箭头浏览列表并按 Enter 键选择建议。

- 启用auto-complete： 该复选框默认为未选中。如果要启用自动完成，请选中此复选框。
- Automatically suggest matches： 如果选中此复选框，建议会自动出现在您输入的内容下方。如果取消选中该复选框，您仍然可以在键入时按
  Esc 键，查看并从自动完成选项列表中进行选择。
- 忽略大小写： 如果选中该复选框，建议将包括输入文本的大写和小写版本。

自动缩进选项允许你控制如何将制表符自动添加到代码中。 如果选中启用自动缩进复选框，在源代码编辑器中键入时就会自动缩进。

- 换行后缩进：
  如果选中该复选框，当你开始一行新的内容时，就会添加一个缩进，这样你就可以在上一行第一个字符的正下方开始键入。如果未选中，光标将始终位于新行的第一列。
- 制表符自动缩进： 如果该字段设置为从不（默认），`<Tab>` 键将始终插入制表符或空格字符。如果设置为 "始终"，`<Tab>` 键总是将缩进调整到 "correct"
  的水平。如果设置为 "leading whitespace"，`<Tab>` 键会在前导空白处适当缩进，并在其他地方插入制表符或空格。

- 触发字符： 如果键入一个指定的字符，当前行的缩进级别会根据代码的解析修改为正确的级别。例如，"{"会增加缩进级别，"}"会减少缩进级别。按 Ctrl+Z
  可以撤销刚刚发生的自动缩进。默认触发字符为 \# : { }

- 缩进大括号： 如果选中该复选框，自动缩进格式代码将使用大括号，如下例所示：

```cpp
if (true)
{ // 这里的代码块 }
```

vertical caret policy字段控制源代码编辑器在文本光标或当前位置高亮显示上下移动时的滚动方式。
使用这些字段可以优化源代码编辑器跳转到新位置时的上下文量。 大多数用户不需要修改这些设置。 请参阅:
https://www.scintilla.org/ScintillaDoc.html

- even： 选中该复选框会使源代码以相同的方式上下滚动。
- jumps： 选中该复选框会根据需要滚动多行代码，以显示当前代码行的上下文。
- strict： 选中该复选框表示不希望文本光标进入 Slop 值所定义的区域。如果不选中 Slop，代码会滚动以将当前行保持在窗口中间。
- slop： 选中该复选框可让您定义不想让文本光标进入的源代码编辑器顶部和底部的行数。
- slop value： 通过该字段，您可以设置文本光标应避免进入的 "源编辑器 "顶部和底部的行数。

未使用实体 "字段可让您使用彩色背景来突出显示从未使用过的实体。默认情况下，该功能是关闭的。如果打开此功能，定义未使用实体的代码默认背景为灰色。例如，如果一个函数从未被调用，那么在启用此功能后，该函数中的所有代码都会显示灰色背景。

通过 "注释包边 "字段，可以在指定列处对注释文本进行包边。该功能默认为关闭。

版本控制 "区域中的 "显示内联责备 "字段会显示每一行的 Git 责备信息。

#figure(image("./img/2023-11-07 08.38.png"))

=== editor > macros category

您可以录制、保存和重放源代码编辑器宏。 保存源代码编辑器宏后，可以使用选项对话框重命名和删除宏。 请按照以下步骤操作：

1.

选择tools > options，展开editor类别，然后选择macros类别。

2.

在顶部框中选择要配置的宏。

3.

如果要重命名宏或指定不同的按键序列来触发宏，请单击 "编辑"。请注意，您不能编辑宏执行的操作。要修改操作，请录制新的宏。

4.

如果要删除宏，请单击删除。

=== editor > styles category

您可以在选项对话框中自定义源代码编辑器中使用的颜色。 要打开此对话框，请选择tools > option。展开 "editor" 类别，然后选择 "style"
类别。

Understand 还会根据系统设置在深色模式和浅色模式之间切换。这些颜色主题会根据您所处的模式而改变。

要选择带有一组已定义颜色的配色方案，请从预定义列表中选择一个方案。默认方案为 "understand"

要更改颜色，请单击列表中某个项目旁边的颜色方块。使用 "select color" 对话框为该项目选择新的颜色。

您可以更改任何项目的文本前景色 (FG) 和背景色 (BG)。 还可以为任何项目设置文本粗体 (B)、斜体 (I) 或下划线
(U)。要突出显示项目的整行，请选中 EOL 框。

您可以使用 "导入 "和 "导出 "按钮将编辑器样式设置保存到 "理解主题"（\*.lua）文件中。这样，您就可以在计算机之间共享样式。

默认情况下，源代码使用以下颜色代码：

- 深橙色文本： 用于语言和预处理器关键字
- 蓝色文本： 用于字符和字符串
- 绿色斜体文本： 用于注释
- 黑色文本： 用于所有其他源文本
- 白色背景 用于大多数源文本
- 灰色背景 用于非活动代码行
- 蓝色背景 用于突出显示搜索中的文本

#figure(image("./img/2023-11-07 08.43.png"))

根据源代码语言的不同，还可以自定义其他项目。 例如，使用 C++，可以自定义类、枚举器、命名空间和许多其他类别的名称。使用
Pascal，可以自定义模块、例程和类型名称的颜色。 使用 Fortran，可以自定义块、模块、子程序和类型名称的颜色。对于
Ada，可以自定义全局、局部、包、子程序和类型名称的颜色。

要创建其他类别，请单击 "新建"。 在 "user style" 对话框中，键入样式名称，选择该样式适用的语言，并键入要在该样式中突出显示的关键字。
用空格、换行符或制表符分隔关键字。然后单击保存。然后就可以为新样式设置格式了。

=== editor > navigation category

您可以控制浏览模式的行为。要打开此对话框，请选择tools > options。展开编辑器类别，然后选择navigation类别。

- 按下 Control 时激活： 如果选中此选项（默认为打开），则在指向实体时按住 Ctrl 键，源编辑器窗口将使用浏览模式。
- 编辑源文件： 如果选中该复选框（默认为打开），则在浏览模式下单击实体时，焦点会跳转到该实体的声明。您可以选择一个键（无、Alt 或
  Shift），必须在单击的同时按下该键才能执行此操作。默认情况下，点击时必须按 Alt 键才能跳转到实体的声明。
- 更新信息浏览器： 如果选中该复选框（默认为打开），在 "浏览模式 "下单击实体时，"信息浏览器 "将显示实体的相关信息。您可以选择一个必须与单击同时按下的按键，以使该操作发生。默认情况下，点击时不需要按键。
- 启用编辑器工具提示：
  如果想在鼠标光标停留在源代码中的实体名称上时看到简要信息，请选中此复选框。这些信息可能包括全名、变量类型以及函数的参数和返回值。这些工具提示默认为打开。
- 数字格式： 选择在源代码悬停文本中将数值显示为十进制、二进制或十六进制。例如，以数字字面和枚举值初始化的变量将显示此类悬停文本。

#figure(image("./img/2023-11-07 08.47.png"))

=== editor > external editor category

您可以使用 Understand
提供的编辑器以外的其他编辑器来查看和编辑源代码。只要打开源代码，就会使用您选择的编辑器。这样就能在使用熟悉的编辑器时方便地浏览源代码。例如，您可以使用
Microsoft Visual C++ 或 Emacs 作为编辑器。

你应该选择一个可以接受命令行参数的编辑器，这些参数可以指定要打开的文件，以及要转到的行数和列数。

要更改编辑器，请按照以下步骤操作：

1.

选择工具 > 选项。展开编辑器类别，然后选择外部编辑器类别。

2.

如果不想使用 "理解 "进行编辑，请选中 "使用外部编辑器 "复选框。

3.

在 "编辑器 "字段中，单击文件夹图标并选择要使用的编辑器的可执行文件。

4.

在参数字段中，键入打开编辑器时要使用的命令行参数。 使用 `$file`、`$line` 和 `$col` 变量允许 Understand
将源文件打开到正确的位置。

例如，对于 Unix 上的 GVIM 编辑器，编辑器为 "gvim"，参数应如下（适用于 GVIM 6.0 或更高版本）：

```shell-unix-generic
--servername UND --remote +$line $file
```

对于 Windows 上的 TextPad 编辑器，编辑器很可能是 c:\Program Files\textpad4\textpad.exe，参数应如下：

```shell-unix-generic
$file($line,$col)
```

Understand 上下文菜单（也称右键菜单）可以在外部编辑器中使用。 SciTools 支持网站提供了相关步骤。 请在 SciTools 支持网站上搜索集成
EMACS、vi、Visual Studio 和 SlickEdit 等编辑器的步骤。

== graphs category

通过 tools > options 对话框中的 "graph" 类别，可以控制与图形显示方式有关的选项。 某些选项仅适用于某些类型的图形，例如群集图形。

#figure(image("./img/2023-11-07 09.02.png"))

- 悬停时突出显示边：
  默认情况下，当鼠标光标悬停在关系上时，图形中的关系（连接线）会突出显示。这样就更容易区分重叠的关系。当鼠标光标悬停在关系上时，总是会显示描述关系的文本；此选项不会影响关系描述的显示。
- 动画过渡：
  默认情况下，当您对图形进行更改（如扩展或压缩节点或更改图形自定义器区域中的设置）时，重组图形和显示扩展节点的子节点的过渡是动画的。如果想省略动画过渡，请取消选中此复选框。
- 滚轮缩放：默认情况下，鼠标滚轮可用于放大和缩小。取消选中此复选框可使鼠标滚轮在图形内上下滚动。
- 首选图形变量： 默认情况下，选择图表类别时会打开简体变体（如果可用）。此列表显示了 Understand
  寻找要打开的图表变体的顺序。您可以选择一个变体，然后单击 "上移 "或 "下移 "更改首选项。
- 边缘上下文菜单中显示的最大引用： 如果右键单击群集图形中节点之间的任何线，则会显示该边所代表的关系列表。默认情况下，每个节点最多显示 25
  个关系。您可以提高或降低这一限制。允许的最大值为 99。

在该类别的工具栏区域，您可以选择要为图形显示工具栏的哪些部分。

#figure(image("./img/2023-11-07 09.04.png"))

群集图形区域可让您自定义群集图形的行为。

#figure(image("./img/2023-11-07 09.05.png"))

- 填充群集： 默认情况下，群集的背景是透明的。选中该复选框可为群集添加彩色背景。
- 节点/群集双击时：
  控制双击图形中的节点时发生的情况。默认情况下，簇会展开或收缩。您可以更改此设置，以显示/隐藏一个方向或另一个方向上的关系。更多选项可让您同时展开/收缩集群和显示/隐藏关系。

通过该类别的簇图形样式区域，您可以自定义所有可自定义图形的显示颜色、形状和箭头，这些图形包括架构依赖性、簇、比较和控制流图形。

#figure(image("./img/2023-11-07 09.06.png"))

要更改节点或边（实体间的线条）类型的颜色，请单击 "填充 "列或 "线条 "列中的方框。 要更改实体或架构节点方框的形状，请使用下拉列表选择不同的形状。
要更改箭头的两端，请选择不同的箭头头或箭头尾。

您可以使用 "上移 "和 "下移 "按钮更改样式的顺序。 为节点创建自定义样式的方法如下：

1.

单击节点的新建按钮。

2.

键入新样式的唯一名称。

3.

选择该样式是否仅适用于折叠群集、非群集或任何群集、或任何群集。

4.

选择此样式是否只适用于架构节点、实体节点或所有节点。节点，还是所有节点。

5.

如果是实体节点样式，您可以选择一种方法来筛选应具有此样式的实体。

过滤实体的方式。我们提供了几个过滤器示例，您也可以修改建议的过滤器来创建自己的过滤器。

过滤器，创建自己的过滤器。例如，"本地对象 "过滤器将样式应用于

仅适用于本地定义的对象。类型 ~未命名 "过滤器将样式应用于类型不是未命名的实体。

#figure(image("./img/2023-11-07 09.07.png"))

为边缘创建自定义样式的方法如下：

1.

单击边缘的新建按钮。

2.

为新样式键入一个唯一的名称。

3.

选择该样式是否只适用于正向引用、双向引用、分离式双向引用或所有引用。

4.

您可以选择一种方法来筛选应使用此样式的边。我们提供了几个筛选器示例，您也可以修改建议的筛选器创建自己的筛选器。例如，"inherit,
inheritby"（继承，通过继承）筛选器仅将样式应用于继承关系。call ~inactive, callby ~"过滤器只将样式应用于活动的调用和调用关系。

#figure(image("./img/2023-11-07 09.08.png"))

== annotations category

通过 tools > options 对话框中的 "注释 "类别，可以控制注释的显示和编辑方式。

#figure(image("./img/2023-11-07 09.10.png"))

- 作者： 键入您的姓名或希望与您创建的注释相关联的用户名。
- 在其中打开注释：
  默认情况下，当你指向注释指示符时，注释会显示在弹出式区域中（除非注释查看器已打开）；当你单击注释指示符或在注释浏览器中单击时，注释会显示在注释查看器中。如果选择 "弹出窗口"，则在单击注释指示符时，注释查看器不会打开，只会显示弹出区域。
- 编辑器显示：
  默认情况下，注释指示符会显示在源编辑器的右边空白处，紧挨着任何有注释的行。如果选择内联，则注释会显示在源代码中注释行的下方。如果您不显示注释。请注意，除非打开注释查看器，否则文件级别的注释和包含附加文件的注释在内联模式下不可见。
- 打印时显示注释： 如果选中此复选框，在打印源代码文件时，无论注释在源代码编辑器窗口中如何显示，都将以内联模式打印。
- 在实体悬停文本中显示注释： 如果选中此复选框，则在两秒钟内指向代码中使用相关实体的任何位置，都会显示注释。
- 当前作者背景： 单击彩色块可更改注释查看器和弹出注释中您添加的注释的背景颜色。
- 当前作者前景： 单击彩色图块可更改注释查看器和弹出注释中的文本颜色，以显示您添加的注释。
- 其他作者背景： 点击彩色块可更改注释查看器和弹出注释中其他用户添加的注释的背景颜色。
- 其他作者前景： 点击彩色块可更改注释查看器和弹出注释中其他用户添加的注释的文本颜色。

注释存储在 `<project>.und` 目录中的 JSON 文件中。任何附加文件都存储在 `<project>.und` 目录的媒体子目录中。

== user tools category

有关如何配置工具以及在右键菜单、工具菜单和工具栏中提供运行这些工具的命令的信息

= exploring your codebase

本章详细介绍了 "understand" 中的基本窗口及其选项。 本章还包括 "筛选区 "和 "信息浏览器 "中的操作。
实体定位器和文件中查找用于搜索和定位实体的使用和操作详情

== 请 right-click

对不起，我大喊大叫了（使用了大写字母）。 为了让 Understand 界面尽可能快速、紧凑和优雅，我们在鼠标按键下隐藏了大量功能。
一般规则是，在任何地方，你都可以右击来执行或学习某些操作。 第二条一般规则是，右键单击可以重复使用窗口，而 Ctrl + 右键单击则可以打开新窗口。
因此，请右击。以后不会再有提醒。

#figure(image("./img/2023-11-07 09.18.22.png"))

== various windows explained

Understand 的图形用户界面有许多查找和检查实体的工具。 本章将简要列出所有这些工具，并详细介绍 "实体过滤器"、"信息浏览器 "和 "收藏夹"。

用于查找和研究实体(entity)的工具有

- 分析日志： 显示项目分析结果，包括任何错误和警告。
- 架构浏览器： 定义项目的命名区域和视图。
- 书签： 显示和跳转到书签。
- 上下文信息侧边栏：显示当前源代码编辑器文件的上下文信息。
- 依赖关系浏览器 让你浏览依赖关系。
- 实体过滤器： 提供所选类型实体的字母列表。
- 实体定位器： 可让您以复杂方式过滤项目中的所有实体。
- 探索视图： 用于浏览关系层次结构。
- 收藏夹： 提供常用实体的快速链接。
- 在文件中查找： 搜索多个文件。
- 信息浏览器： 提供实体特征和连接的浏览器。
- 预览器 提供在连续位置查看代码的快速方法。
- 项目浏览器： 可让您浏览分层文件列表。
- 源代码编辑器： 显示源代码。
- 范围列表： 列出文件中的函数或类似结构体。
- 图形视图： 显示实体的连接和结构。
- 度量浏览器 生成有关实体和架构的统计数据。
- 窗口选择器： 跳转到打开的窗口。
- 注释视图： 查看项目中的注释。

== entity(实体) filter(过滤器)

实体过滤器提供所选实体类型的快速列表。 您可以过滤该列表以匹配文本字符串。

显示列表中的选项取决于您为项目启用的语言以及项目中的实体和关系类型。 如果项目使用多种语言，则语言会与类型一起列出。

#figure(image("./img/2023-11-07 09.24.png"))

注意：

对于特别大的项目，可以禁用 "所有实体 "选项，以防止内存出错。 对于每种实体类型，您都可以快速找到源代码中已声明（或使用）的任何实体。

#figure(image("./img/2023-11-07 09.28.png"))

默认情况下，实体按升序（A 到 Z）排序。单击汉堡包菜单(三条纹)并选择降序排序，可以扭转顺序。

只能打开一个实体过滤器。 如果关闭了 "entity filter" 窗口，请选择 view > entity filter 重新打开。

=== using the filter field

在 "filter" 字段中，您可以键入一个字符串来匹配一组实体。 如果实体名称中包含字符串，则实体名称与之匹配。 例如，输入 "y"，就只能列出名称中包含 Y
或 y 的实体。

默认情况下，过滤不区分大小写。 您可以单击汉堡菜单(三条纹)，选择 "Filter Case Sensitivity" > "Case
Sensitive"，使其区分大小写。

如果要快速跳转到列表中以特定字母开头的实体，只需在实体列表中单击并键入一个字母。

您还可以为 "筛选器 "字段选择其他工作方式。 单击汉堡菜单(三条纹)并选择 "筛选模式语法"。选项有:

- 固定字符串： 这是默认行为。
- 通配符： 选择该选项后，可以使用 \*（任意字符）和 ?（任意单字符）通配符进行模式匹配。
- 正则表达式： 选择该选项后，可以使用 Unix 风格的正则表达式。

要只查看未知或未解决实体，请单击汉堡菜单并选择filter unresolved entities > hide resolved entities。
要只查看已解决实体，请单击汉堡菜单并选择 filter unresolved entities > hide unresolved entities。
要同时查看已解决和未解决实体，请选择 "filter unresolved entities" > "no filter"。

当您使用完过滤器并想查看所选类型的所有实体时，请单击汉堡包菜单并选择clear filter。

如果您更改了 "show" 字段中的实体类型， 如果在汉堡包菜单(三条纹)的可用菜单中选择了 "clear filter text on filter type
changes"选项， 则您键入的任何过滤器都会被清除。

右键单击 "筛选器 "区域，从 "最近筛选器 "列表中选择您使用过的筛选器。 如果您选择了使用筛选器找到的任何实体，筛选器就会显示在此列表中。

=== customizing the display

您可以修改实体过滤器列出实体的方式，具体如下：

默认情况下，实体过滤器列表中显示实体全名，实体按全名字母顺序排列。 该名称可能包括类前缀或其他特定语言的前缀类型。 要按 "简短"、无前缀的名称列出实体，请单击汉堡菜单并选择
entity name as > short name。

默认情况下，实体过滤器的文件列表中只显示文件名。 该名称不包括文件位置。 要列出包含位置的文件，请单击汉堡菜单并选择file name as >
relative name or file name as > long name。

默认情况下，只显示函数或方法的名称。 要同时显示此类实体的参数， 请单击汉堡包菜单并选择 show parameters as > full
parameters or show parameters > short parameters。

=== root entity types

在 "显示 "下拉列表中，大多数语言都有名称中包含 "根 "的实体类型，如根调用、根调用比对和根包含比对。 这些 "根 "类型只显示给定树的顶部。关系树的顶部（或底部）通常是开始探索新代码的有用点。

- root calls：
  仅列出调用其他实体但自身不被调用的实体。这些实体要么是高级代码（主代码），要么是硬件调用的代码（中断处理程序），要么是死代码（未使用的代码）。
- root call bys： 只列出被其他实体调用的实体，但不列出调用其他实体的实体。这些是低级例程。
- root include bys： 只列出被其他文件包含的文件，但不列出包含其他文件的文件。这些是低级包含文件。
- root classes： 只列出未从其他类派生的类。这些是候选的低级类或库类。
- root decls： 只列出最高级别的声明例程。(阿达）。
- root withs： 只列出 "与 "其他程序单元的程序单元（包、任务、子程序），但不与任何其他程序单元同源。（Ada）

== information browser

当你点击 "entity filter" 或其他窗口中的某个项目时，"信息浏览器 "就会更新，显示 "understand" 所知道的关于该实体的所有信息。
信息浏览器以树形方式显示这些数据，其分支可以单独或同时展开。

如果信息浏览器没有打开，您可以右键单击 Understand 中任意位置的项目，然后选择查看信息。 或者从菜单中选择 view > information
browser。

通过信息浏览器，可以了解 Understand 所知道的关于某个实体的所有信息。 信息以树形显示。 可以选择性地或批量地展开树形结构。
树的每个终止项（叶）都提供了有关该实体的一些信息。

信息浏览器窗口中的所有信息都可以保存到文本文件中，或通过标准的 Windows 或 X11 复制功能进行复制和粘贴。

当您向下钻取时，您可以更改正在了解的实体。 每次更改实体时，信息浏览器历史记录中都会记住该实体，以便快速回溯。

#figure(image("./img/2023-11-07 15.58.08.png"))

=== driling down a relationship(钻研关系?)

向下钻取树的工作原理与预期的一样（大部分情况下）。 要扩展树，请单击 > 箭头。要关闭树，请单击向下箭头。

右键单击会弹出一个菜单，其中包括展开/折叠选项。 全部展开 "提供了展开所选分支所有层级的快捷方式。

要打开或关闭整个树，请右键单击顶层项，然后选择全部展开或全部折叠。

#figure(image("./img/2023-11-07 15.59.png"))

=== displaying more or less information

如果单击信息浏览器中诸如 "调用"、"被调用 "或 "引用 "等粗体标题旁边的图标（或右键单击标题），您将看到一些选项，可以修改该实体的列出方式。这些选项包括

- 允许预展开： 如果启用，则在更改实体时，"度量"(metrics)节点可以保持打开状态。
- 定义名称： 控制是否不显示定义被调用或调用函数的文件，还是使用短文件路径、长文件路径或相对文件路径显示。
- 文件名：控制引用格式是短路径、长路径还是相对于项目文件夹的路径。
- 全称：如果选中，则显示实体的全称。
- 分组方式： 对于 C++ 类，选择是否按可用访问类型（公共或私有）或成员类型（函数或对象）对类成员进行排序。
- 非活动： 控制是否列出非活动引用。
- 宏： 控制 "已使用宏 "列表是否包括函数宏、对象宏或两者。
- 参数： 列出参数。
- 参考： 选择 "完整 "可包含引用的文件和行位置。
- 返回类型： 列出返回类型。
- 显示链接名称：当链接实体以多种语言存在时，如果名称不同，则显示替代名称。
- 排序： 控制列表的排序顺序。
- 类型： 如果选中，则显示数据类型。
- 查看方式： 对于引用列表，您可以选择是显示引用的平面列表，还是按包含引用的文件或定义的架构之一对引用进行分组。

=== searching the information browser

如果单击信息浏览器顶部的放大镜图标（或在信息浏览器中单击并按 Ctrl+F），信息浏览器底部会出现查找栏。

#figure(image("./img/2023-11-07 16.02.png"))

在框中键入文本，然后单击前进或后退箭头，即可在信息浏览器文本中找到出现过的字符串。 所有文本都会被搜索，包括节点名称和当前被折叠节点隐藏的项目。
如果键入的字符串没有出现在信息浏览器文本的任何位置，则字段会变为红色。

要使搜索区分大小写或只匹配全词，请使用下拉箭头选择这些命令。

=== syncing the information browser(同步消息浏览器?)

如果取消选中 "同步 "复选框，就可以打开多个 "信息浏览器 "窗口。 选择实体或选择 "查看信息 "会更新选中 "同步 "复选框的 "信息浏览器"。

如果选中了 "同步"，但又想打开单独的 "信息浏览器"，请按住 Ctrl 键，同时从右键菜单中选择 "查看信息"。

文件同步框会将信息浏览器与活动源编辑器中的文件同步。

#figure(image("./img/2023-11-07 16.03.png"))

=== visiting source code

一般来说，如果您双击信息窗口（信息浏览器或实体过滤器）中的实体，该实体的声明将加载到文档区。

另一种访问 Understand 中任何实体源的方法是上下文菜单。 在适当的情况下，实体的上下文菜单包含一个 "编辑源代码"（Ctrl+Shift+S）菜单项。
在某些情况下，还有用于编辑定义和编辑声明 (Ctrl+Shift+D) 的单独菜单项，或用于其他特定语言位置的单独菜单。

编辑配套文件 "命令可打开并循环浏览具有相同名称但不同扩展名的其他文件。例如，这对 \*.c 和 \*.h 文件非常有用。

#figure(image("./img/2023-11-07 16.05.png"))

=== visiting references

信息浏览器中标有 "引用 "的部分列出了分析源代码中提及该实体的所有地方：

#figure(image("./img/2023-11-07 16.06.07.png"))

左键单击任何引用即可访问源代码中的该位置。

#figure(image("./img/2023-11-07 16.07.png"))

右键单击节点的 "引用 "标题或单击节点旁边的向下箭头，选择如何组织引用。 您可以选择默认的平面列表和所有架构。

=== viewing metrics(指标?)

信息浏览器上的 "metrics" 节点显示当前实体的可用metrics。

默认情况下，在信息浏览器中切换到另一个实体时，"metrics"节点会自动关闭。 这是因为更新大型项目中每个实体的metrics可能需要很长时间。

如果您的项目很小，在实体间切换时更新度量标准不需要很长时间，您可以右键单击 "metrics" 节点并选择 "allow pre-explansion"。
这样，当你切换实体时，"metrics"节点将保持打开状态。 你会看到以下关于metrics更新所需时间的警告。

#figure(image("./img/2023-11-07 16.08.png"))

=== saving and printing information browser text(保存 打印 信息)

信息浏览器中显示的所有文本都可以复制到剪贴板，以未格式化文本的形式粘贴到其他应用程序中。 只粘贴当前展开的分支。
以文本格式保存或粘贴时，文本中的缩进表示树的分支。

上下文菜单提供复制（只复制选定行）和全部复制两种选择。 对于有类路径和文件的实体，复制命令复制的是简短名称，而复制全名命令复制的是完整的类路径或文件路径。

=== entity history

在探索代码的过程中，您可以快速到达许多地方。 通常情况下，您需要回溯以探索新的路径。 为了帮助你做到这一点，信息浏览器包含了完整的历史记录。
信息浏览器历史记录位于左上角：

#figure(image("./img/2023-11-07 16.10.27.png"))

使用左右箭头在历史列表中前后移动。下箭头显示整个列表。

你可以从下拉历史列表中选择清除历史记录来清除浏览历史。

== project browser

要打开 "项目浏览器"，请从菜单中选择 "视图">"项目浏览器"。

#figure(image("./img/2023-11-07 16.11.png"))

默认情况下，"项目浏览器 "与 "实体过滤器"（以及 "架构浏览器"）位于同一区域。 使用左侧的选项卡可在该区域的浏览器工具之间进行切换。

项目浏览器显示目录层次结构中的项目文件。 您可以根据需要展开或折叠树形结构。

按下 Ctrl+F 可在项目浏览器底部显示搜索行。

文件同步框会将项目浏览器与活动源代码编辑器中的文件同步。

在此视图中单击文件时，上下文菜单会提供与其他视图（如信息浏览器或实体筛选器）相同的命令。

#figure(image("./img/2023-11-07 16.13.27.png"))

对于文件，上下文菜单还包含其他命令，包括打开图形视图、重命名文件、仅分析该文件、查找项目文件中文件名的用途以及将文件添加到收藏夹列表等命令。

添加文件 "命令可让您浏览源代码文件并将其添加到项目中。 要使用删除命令，请选择一个或多个文件和文件夹，然后选择该命令。 如果单击 "是"，"确认项目修改 "对话框会列出将从项目中删除的文件。

外部打开 "命令为目录或文件打开与操作系统相关的工具。 例如，在 Windows 系统中，它会使用 Windows 资源管理器打开一个目录。
对于文件，它会打开文件扩展名的默认工具。

排序命令可让你按文件名或文件扩展名的字母顺序组织列表。

Hide By（按隐藏）命令可用于查看哪些文件尚未添加到自定义架构中。它可以过滤掉任何已添加到所选架构的文件。

== exploring a hierarchy(探索层次结构)

通过 "explore" 视图，可以在项目中上下浏览关系层次结构。

#figure(image("./img/2023-11-07 16.15.png"))

信息浏览器、实体过滤器和项目浏览器中的上下文菜单提供了探索某些类型实体的命令。 该命令类似于 "explore">"探索被调用/调用 "或 "探索">"探索包含"。

如果单击一列中的项目，就会在两侧的列中看到其关系。 当你向左或向右选择项目时，列的大小会调整，以显示更多的层次结构。
调用和包含从左到右排列。调用和包含从右到左。

如果双击一个项目，"源编辑器 "窗口会显示该实体的定义。

引用区域显示当前突出显示关系的行号。双击可访问该代码。

如果选中 "生成同步 "复选框，信息浏览器就会自动显示在 "探索 "窗口中选择的任何实体的信息。 按住 Shift 键可暂时激活此行为。

如果选中 "跳转到第一个引用 "复选框，"源代码编辑器 "将自动显示在 "探索 "窗口中选择的任何实体的初始引用。 按住 Ctrl 键可暂时激活此行为。

如果要启用以下任何显示功能, 单击汉堡包(三条纹)菜单选项：

- 显示长名称： 显示每个调用的长名称。
- 显示参数： 显示每个呼叫的参数列表。

== dependency browser

通过 "依赖关系浏览器"，您可以查看哪些项目依赖于其他项目。 您可以在架构节点、文件和大多数实体类型中使用 "依赖关系浏览器"。

要打开 "依赖关系浏览器"，请右键单击 Understand 中的任何架构节点、文件或实体。 例如，在 "实体过滤器"、"信息浏览器 "或图形视图中选择一个实体。
从上下文菜单中选择 "查看依赖关系"。或者选择 "视图">"Dependency Browser"，打开 "依赖关系浏览器"。

左侧面板是范围视图，显示所选项及其子项。 从左侧面板上方的下拉列表中，选择是否列出所选节点或实体的 "依赖"、"被依赖"、"引用自 "或 "引用到 "项。
(其中有些选项不适用于某些节点或实体类型）。

右侧面板是实体视图，显示与左侧面板所选项目有依赖关系的项目。 例如，如果一个项目包含、调用、设置、使用、铸造或引用另一个项目，则该项目依赖于该项目。

您可以在左右面板中展开文件和架构节点。 例如，当您查看一个架构节点的依赖关系时，您可以展开它以查看较低级别的架构节点，然后是文件，最后是文件中的实体。
也可以右键单击任一面板，选择全部展开或全部折叠。

依赖关系浏览器有以下工具栏图标：

单击 "筛选器 "图标，启用或禁用显示的任何依赖关系类型。 选项会根据源代码语言的不同而改变。如果 "包含 "和 "导入 "关系是构建所需的，但在逻辑上并不依赖，则可能需要隐藏它们。
此选项以及显示编译时间或链接时间依赖关系的选项（适用于有区别的语言）可在 "工具">"选项 "对话框的 "依赖关系 "类别中进行控制

单击图形图标可创建当前显示在依赖关系浏览器中的依赖关系图形视图。 架构节点可使用此类图表、类和文件。
依赖关系浏览器显示的是一级依赖关系，而图形视图可以显示多级依赖关系。 如果下拉关系设置为 "依赖 "或 "通过依赖"，则启用此图标。 如果关系设置为 "从引用 "或 "引用至"，则不会启用该图标。

单击 "导出 "图标可导出依赖关系浏览器左侧面板顶部项目的逗号分隔值 (CSV) 报告。 也可以用鼠标选择依赖关系浏览器右面板中的项目。 按 Ctrl+C
将当前选择的文本放到剪贴板上，以便粘贴到其他应用程序中。

收藏夹图标，将当前依赖项添加到收藏夹列表中。 如果未选中重用框，则在选择查看依赖关系时会打开一个新的依赖关系浏览器。 重用复选框默认为选中。

如果选中 "同步 "复选框，则 "依赖关系浏览器 "会显示在 "项目浏览器"、"实体过滤器"、"架构浏览器 "
或类似窗口中选择的任何架构节点、文件、类或包的信息。 此外，"依赖关系浏览器 "还会显示你在图形中选择的任何关系（连接线或 "边"，右键单击连接线可显示引用列表）的信息。

单击汉堡(三条纹)菜单

更改以下任何显示选项：

- Architecture Name as: 默认显示相对名称，但也可以选择短名称或长名称。
- 文件名。默认为短名称。您可以选择相对名称或长名称。
- 实体名称为。默认为短名称。您可以选择长名称。
- 分组方式：
  选择如何组织右窗格中列出的依赖关系。默认情况下，它们是根据左窗格中的顶层项分组的。例如，如果顶层项目是文件，则按文件分组。其他选项包括无（平面列表）、按依赖关系/左根、按实体、按类、按定义文件和按架构名称。只有按依赖关系/左根分组时，依赖关系的编译时间与链接时间设置才会影响分组（请参阅第
  103 页）。
- 嵌套组： 选择是否将右窗格中列出的依赖关系组织为嵌套组。例如，依赖项可以先按文件分组，然后再按功能分组。默认情况下，只有当一个组包含超过 20
  个引用时才会使用嵌套分组，但也可以选择不使用嵌套分组或始终使用嵌套分组。
- 架构树： 选择是否使用架构层次来组织右窗格中列出的依赖关系。默认情况下，只有当节点包含超过 20
  个引用时，才会使用嵌套架构节点，但您也可以选择不嵌套节点或始终嵌套节点。
- 引用排序方式： 选择是否按位置（默认）、范围、实体或种类对依赖关系排序。

=== what are dependencies

本节将详细介绍 Understand 如何确定依赖关系，以便在依赖关系浏览器和依赖关系图中显示。

引用是代码中连接两个实体的位置。 例如，myClass 可以声明一个成员函数 myFunction。 在这个例子中，引用连接了父实体和子实体。 您可以在 "信息浏览器 "中查看涉及实体的引用。

依赖关系是指两个文件、类、体系结构节点和某些其他特定语言结构之间由于引用而产生的连接。 例如，如果文件 A 需要文件 B 进行编译或链接，则文件 A 依赖于文件
B。 依赖关系是基于编译还是链接，取决于编译时间与链接时间选项的设置

因此，依赖关系并不存在于两个实体之间。 相反，它们是实体组的父实体之间的依赖关系。 实体的父实体可以是文件、类和/或架构节点。
要查找实体的非文件父实体，请右键单击并选择交互式报告 > API 信息。 在 iReport 区域，查看 "父级 "属性。

了解在分析过程中确定每个实体的父实体。 在此信息浏览器中，可以看到本地对象 "app "定义在 main 中，因此 app 和 main 是父子关系。 函数
main 是文件 GitAhead.cpp 的子实体。文件实体没有父实体。

Architectures将实体组织成一个层次结构， 可以扩展实体的父链。 例如，内置的 "目录结构 "架构按文件夹对实体进行分组。 因此，架构中 "app "对象的完整父级链是
app（本地对象）->main（函数）-> GitAhead.cpp（文件）-> app（架构节点）-> src（架构节点）-> Directory
Structure（架构）。 除文件实体外，自定义架构还可以组织非文件实体。 要在架构浏览器中查看实体的父级链，请打开 "Show Implicitly
Mapped Child Entities"。

Understand 在文件、类和架构层面计算依赖关系。 文件可以依赖其他文件，类可以依赖其他类，架构可以依赖同一根架构中的其他架构。
如果涉及实体的层级不匹配，则不将引用视为依赖关系。 因此，类依赖关系不包括对非会员函数的任何引用，架构也不包括对根架构中未映射的任何内容的引用。

#figure(image("./img/2023-11-09 08.24.46.png"))

Understand 用来查找要显示的依赖关系列表的基本步骤是:

1.

查找起始组中的所有实体。(Find all entities in the starting group)

2.

获取每个实体的引用列表。

3.

确定第二个（引用的）实体在给定级别（文件、类或架构）上的组。

4.

如果第二个实体的组存在，且与起始组不同，那么引用就是连接两个组的依赖关系。

查找依赖关系时需要注意以下几点。

实体可能属于多个组。 当一个实体属于多个组时，如同时属于定义文件和声明文件，或属于同一架构中的两个节点，那么将通过依赖关系计算选择最佳显示组。

- 对于 C/C++ 语言，最佳分组搜索使用包含树。
- 对于 C/C++ 和类似语言，在决定一个实体是否属于声明或定义它的文件时，将使用编译时间与链接时间选项的设置。因此，如果选择 "编译时依赖关系"，实体就属于声明它的头文件。如果选择链接时间依赖关系，则实体属于定义它的源代码文件。
- 对于所有语言，也可以通过架构层次结构与起始组的距离来确定最佳组。目录结构架构用于文件层。
- 如果计算找到多个 "最佳 "组，则引用将被用作每个最佳组的依赖关系。

=== exporting dependencies

通过 Project > Export Dependencies（项目 >
导出依赖关系）菜单命令，可以导出多种类型的文件，提供架构、文件和类/包之间的依赖关系指标。

大多数命令的输出都是 CSV（逗号分隔值）格式，可以用大多数电子表格程序打开。使用 Understand 创建 CSV 文件时，它会自动在文本文件窗口中打开。

可用选项如下：

- 架构依赖关系 >
  - 导出 CSV：此输出列出了 A 列中的节点依赖于 B 列中的节点的架构节点对。
  - 导出矩阵 CSV：此输出列出了 A 列中依赖于其他节点的所有架构节点。在适当的行/列交叉处列出了每对依赖关系的数量。
  - 导出 Cytoscape XML： 该输出格式可在 Cytoscape (www.cytoscape.org) 中打开，Cytoscape
    是一个用于分析和可视化的免费开源程序。该程序可快速绘制大型图表，如果您想了解大型项目中的依赖关系，该程序将非常有用。
  - 导出点： 这种输出格式使用纯文本图形描述语言。有多种程序可以导入 DOT 文件，以创建图表、执行计算和操作数据。
- 文件依赖性 >
  - 导出 CSV：此输出列出了 A 列中的文件依赖于 B 列中的文件的文件对。
  - 导出矩阵 CSV：此输出列出了 A 列中依赖于其他文件的所有文件。每对依赖关系的数量列在相应的行/列交叉处。
  - 导出 Cytoscape XML： 请参阅有关架构依赖关系的 Cytoscape XML 导出说明。
- 类依赖关系 >
  - 导出 CSV：此输出列出了 A 列中的实体依赖于 B 列中的实体的类和包对，C 列中列出了每对依赖的数量
  - 导出矩阵 CSV：此输出列出了 A 列中依赖于其他实体的所有类和包。每对依赖关系的数量都列在相应的行/列交叉处。
  - 导出 Cytoscape XML： 请参阅架构依赖关系的 Cytoscape XML 导出说明。

=== exporting dependencies to a csv file
#footnote[注: csv file是用 逗号"," 做分隔的csv文件]

选择导出 CSV 文件时，还可以设置以下选项。 (本图显示的是导出文件依赖关系的对话框；其他两个 CSV 导出对话框非常相似）。

#figure(image("./img/2023-11-09 10.33.png"))

在此对话框中，可以设置以下选项：

- 选择要分析的架构： 此选项只有在导出架构依赖关系时可用。
- 输出文件：浏览保存 CSV 文件的位置。
- 列： 选中要包含在输出中的列的复选框。导出实体类型的 "从 "和 "到 "列是必填项，不能取消选择。
- 名称： 选择实体名称的长度。例如，所有类型都可以有长或短名称。文件也可以有相对名称。
- 排序： 选择依赖关系的排序方式。可以根据 "从 "列或 "至 "列进行排序。
- 依赖关系汇总： 选择如何汇总多次出现的依赖对。您可以单独显示每对依赖关系，也可以根据您要导出的实体类型将 "从 "或 "到 "列的依赖关系对汇总。

=== exporting dependencies to a csv matrix file
#footnote[注: csv matrix file是类似于excel之类的二维表格]

选择导出 CSV 矩阵文件时，还可以设置以下选项。(本图显示的是导出文件依赖关系的对话框；其他两个 CSV 导出对话框非常相似）。

#figure(image("./img/2023-11-09 08.28.png"))

在此对话框中，可以设置以下选项：

- 选择要分析的架构： 此选项仅在导出架构依赖关系时可用。
- 输出文件：浏览保存 CSV 矩阵文件的位置。
- 名称： 选择实体名称的长度。例如，所有类型都可以有长或短名称。文件也可以使用相对名称。

=== exporting dependencies to cytoscape(一种图软件)
#footnote[Cytoscape is an open source software platform for visualizing molecular(分子太的)
    interaction networks and biological pathways and integrating(融合) these networks
    with annotations, gene expression profiles(配置信息, 这里是: 基因表达信息) and other state
    data. Although Cytoscape was originally designed for biological research, now it
    is a general platform for complex network analysis and visualization(我的评价是6)]

Cytoscape (www.cytoscape.org) 是一款可视化复杂网络的开源软件工具。

选择导出 Cytoscape 文件时，可以通过 "浏览 "来选择输出文件的位置和文件名。 如果要导出架构依赖关系，还可以选择要分析的架构。

导出 \*.xml 文件后，系统会询问您是否要在 Cytoscape 中打开该文件。请注意，只有在计算机上安装了 Cytoscape，才能打开该文件。

== favorites(收藏)

您可以将 Understand 中的各种内容标记为 "收藏夹"，这样就可以像访问浏览器收藏夹组中的网页一样快速访问这些内容。
您的收藏夹可以包括实体、代码位置、图表、信息浏览器显示和依赖关系。 您还可以在收藏夹中存储多个纯文本字符串，这样就可以将其中一个保存的字符串快速复制到剪贴板上。

收藏夹作为项目的一部分保存。

=== creating a favorite entity

要将实体标记为收藏夹，请按照以下步骤操作：

1.

在源代码、"实体过滤器 "区域、"信息浏览器"、图形视图或其他出现实体的地方选择实体名称并单击右键。

#figure(image("./img/2023-11-09 13.14.png"))

2.

选择添加到收藏夹 >
添加到新收藏夹（或现有收藏夹组）。这将添加一个指向实体本身的链接，即使后来行号发生了变化。如果已经创建了收藏夹组，可以从子菜单中选择该组，而不是使用添加到新收藏夹。

3.

另外，如果右键单击源文件，可以选择添加位置到收藏夹，将文件中的行号添加到收藏夹组中。

4.

如果选择创建新的收藏夹组，则会看到 "新建收藏夹 "对话框。为新组键入一个名称，然后单击确定。

5.

创建收藏夹后，将打开收藏夹组。

#figure(image("./img/2023-11-09 13.15.png"))

=== creating a favorites view

除了实体和代码位置，收藏夹还可以包括图形视图、信息浏览器视图和依赖关系浏览器视图。

要为这些项目添加收藏夹，请单击视图工具栏上的收藏夹图标(五角星)。 默认情况下，该视图会添加到您上次使用的收藏夹组中。 如果要将其放在不同的组中，请从 "收藏夹 "视图工具栏的下拉菜单中选择一个收藏夹组。

=== using a favorites group

要打开 "收藏 "组，请选择 "视图">"收藏"。

#figure(image("./img/2023-11-09 13.17.png"))

在 "我的收藏 "视图中，可以使用工具栏中的下拉列表切换到不同的 "我的收藏 "列表。

单击收藏夹组中的链接可跳转到该位置。 单击 "open all item"图标(打开文件夹的图标)可以打开当前列表中的所有收藏夹，单击 "close all
item"图标(关闭文件夹的图标)可以关闭列表中的所有收藏夹。

您可以单击文档区域右上角的汉堡包菜单图标(三条纹)，然后选择 "Add Open Editors/Graphs to
Favorites"命令，将当前打开的所有文件和图形视图添加到收藏夹列表。

#figure(image("./img/2023-11-09 13.19.png"))

与 Understand 中的其他地方一样，您可以右键单击收藏夹，查看上下文菜单，其中包括 "查看信息"、"图形视图 "和 "查找 "等命令。

每个收藏夹左侧的图标（以及收藏夹名称后面的文字）可以识别每个收藏夹的类型。 例如，部分图标及其含义如下： 带有信息图标的收藏夹链接到信息浏览器视图。

- 带有依赖图标的收藏夹链接到依赖浏览器视图。
- 带有图形图标的收藏夹链接到图形视图。
- 带有剪贴板图标的收藏夹可存储可粘贴到源代码中的文本。单击文本收藏夹后，文本将被放入剪贴板，你可以将其粘贴到源代码编辑器窗口或其他应用程序中。
- 如果单击收藏夹组顶部的配置扳手图标，会显示其他工具栏图标。通过这些图标，可以对收藏夹进行如下管理： -箭头图标在组中上下移动所选收藏夹。
  - 单击此图标可创建一个标题，用于组织收藏夹。
  - 单击此图标创建文本收藏夹。
  - 从组中删除所选收藏。也可以通过转到收藏夹位置，右键单击并选择从收藏夹中删除命令来删除收藏夹。
  - 重命名当前收藏夹组。
  - 删除当前收藏夹组。

#figure(image("./img/2023-11-09 13.20.20.png"))

=== creating a plain text favorite

您可以在收藏夹中存储多个纯文本字符串，这样就可以快速将保存的字符串复制到剪贴板，然后根据需要粘贴到代码中。例如，您可以在文件开头或代码的其他地方使用标准注释。

要将文本保存为收藏夹，请按照以下步骤操作：

1.

在源代码编辑器中选择文本并单击右键。

#figure(image("./img/2023-11-09 13.31.png"))

2.

选择将选择添加到收藏夹，然后在子菜单中选择收藏夹组。

3.

创建收藏夹时，收藏夹组就会打开。

您也可以通过单击收藏夹区域中的图标（选择收藏夹区域顶部的配置图标即可看到）来创建文本收藏夹。您将看到新建文本收藏对话框。

在第一个字段中，键入要显示在收藏夹列表中的简短名称。

在第二个字段中，键入收藏夹的全文。

#figure(image("./img/2023-11-09 13.30.42.png"))

#figure(image("./img/2023-11-09 13.32.png"))

要使用文本收藏夹，请双击收藏夹列表中的收藏夹名称。这将把第二个字段中的长文本复制到剪贴板，以便粘贴到源代码编辑器中。

如果选中 "所有文本收藏夹复制到理解编辑器 "复选框，那么当你点击文本收藏夹时，你在第二个字段中键入的文本就会自动粘贴到文本光标位置的当前源代码编辑器窗口中。

= searching your source

本章介绍如何使用 Understand 的查找文件和实体定位器功能来定位源代码中的内容。

== searching: an overview(概述)

在大量源代码中查找内容是一件困难、乏味且容易出错的事情。

Understand 提供了多种在源代码中搜索字符串或查找特定行的方法。 这些选项的命令位于搜索菜单中。 下表(原书)列出的位置对这些命令进行了说明：

#figure(image("./img/2023-11-10 00.24.01.png"))

这些搜索方法各有利弊。它们共同提供了强大的方法，可以轻松查找您需要查找的内容，从而更好地理解和修改您的代码。

== instant(即时搜索) search
#footnote[这个instant居然是即时, 不是实例]

即时搜索功能可让你即时搜索整个项目，即使该项目包含数百万行源代码。 当你输入时，你可以看到与你目前输入的字符串相匹配的术语。

#figure(image("./img/2023-11-10 00.27.png"))

即时搜索 的搜索框位于 understand窗口的右上角。

如果看不到这个字段，请从菜单中选择 "视图">"工具栏">"搜索"。

要开始搜索，请单击 "搜索 "字段并输入要查找的字符串。 也可以按 Ctrl+Alt+S 或从菜单中选择 "搜索">"即时搜索"，将光标移动到 "搜索 "字段。

使用 "即时搜索 "的最简单方法是键入要在代码中匹配的字符串。 键入搜索字符串后按 Enter 键，即可在 "搜索结果 "区域看到与搜索匹配的文件列表。
即时搜索的搜索结果界面与在文件中查找的搜索结果界面相同。

右键单击该区域可展开或折叠结果树。 选择 "查找 "可使用 "上一个 "和 "下一个 "图标逐个浏览结果。
你可以双击文件打开文件，并查看搜索结果区域中的代码行。

#figure(image("./img/2023-11-10 00.28.png"))

即时搜索支持更强大的搜索选项。 该字段使用的语法基于开源文本搜索引擎库 Apache Lucene 使用的语法。

以下列表解释了一些可用的语法选项：

- 搜索不区分大小写。搜索 test 也会匹配 "Test "和 "TEST"。
- 除非使用通配符，否则搜索会匹配整个单词。搜索 test 不会匹配 "testfile"。
- 可用的通配符有 \*（任意数量的字母和数字）、? （任意单个字母或数字）。不能使用通配符作为搜索字符串的第一个字符。
- 在编制代码索引时（在后台进行），Instant Search 会在空白处和标点符号处（以及 C/C++、Java 和 Ada
  的语法约定处）将代码分割成可搜索字符串。因此，以下代码行中的可搜索字符串是 "foreach"、1 和 10：

```cpp
foreach (i=1, i<10, i++)
```

- 您不能使用即时搜索查找跨越标点符号边界的字符串，也不能搜索标点符号本身。例如，不能搜索 "i=1"。您可以搜索包含空格的字符串（如注释中的文本），方法是用引号括起来。
- 您可以缩小搜索范围，在字符串、标识符和注释中进行搜索。默认情况下，它会搜索所有三种类型的匹配。例如，以下搜索只在带引号的字符串中查找 "test"：

```cpp
string:test
```

下面的搜索仅在变量名和函数名等标识符中查找 "test"：

```cpp
identifier:test
```

下面的搜索仅在注释中找到 "test"：

```cpp
comment:test
```

- 您可以使用布尔搜索。默认情况下，多个搜索词是 ORed 的。因此，搜索 "for delta "和搜索 "for OR delta "是一样的。两者都会匹配包含 "for "或 "delta "的文件。请记住，搜索字符串用于匹配整个文件中的术语，而不仅仅是单个语句中的术语。
- 如果要与术语相加，可使用 "for AND delta "这样的搜索。这会匹配同时包含 "for "和 "delta "的文件。
- 您可以使用 + 操作符来要求搜索词存在于找到的所有文件中。例如，下面的搜索会找到所有包含 "delta "且可能包含 "for "的文件：

```cpp
+delta for
```

- 您可以使用 NOT（或 -）操作符从结果中删除包含特定搜索词的文档。例如，以下搜索会找到包含 "delta "或 "delta0 "但不包含 "delta2 "的文档：

```cpp
delta delta0 NOT delta2 delta delta0 -delta2
```

- 您可以使用括号定义搜索中布尔操作符的顺序。例如

```cpp
(delta0 OR delta1) AND 更改
```

- 您可以在搜索词末尾加一个斜杠 (~) 来执行 "模糊 "搜索。

例如，`boo~` 可以匹配 foo、too 和 book。

== find in files

您可以搜索所有项目文件或其他选定文件中出现的文本字符串或正则表达式。 匹配结果显示在搜索结果窗口中，双击结果中的任意一行即可访问源代码。 通过选中 "替换 "框，可以在 "文件中查找 "和 "文件中替换"对话框之间切换。

要打开 "在文件中查找 "工具，请从菜单栏中选择 "搜索">"在文件中查找"，或从任何上下文菜单中选择 "在...中查找"，或按 F5 键。

#figure(image("./img/2023-11-10 00.34.47.jpeg"))

在文件中查找 "区域允许你搜索多个文件中出现的字符串。 在以前的版本中，该功能被称为 Hyper Grep，因为它与 Unix 命令 grep
相似。指定搜索如下：

- 查找：键入要搜索的字符串。其他字段控制搜索的执行方式。通过下拉列表可以从最近的查找字符串中进行选择。
- 文件类型： 您可以选择各种语言的文件扩展名来缩小搜索范围。或者，输入您自己的文件扩展名模式。将此字段留空可搜索所有文件。如果 "查找 "字段设置为 "打开文件"，则不能使用此字段。选中 "排除文件类型 "复选框可从搜索中排除所选文件类型，并搜索项目中的所有其他文件。
- 大小写敏感： 选中此复选框可进行大小写敏感搜索。默认情况下忽略大小写。
- 匹配整词： 选中此复选框可仅匹配正则表达式中的整词（"test "匹配 "test"，但不匹配 "testing"）。对于固定字符串和通配符搜索，单词边界将被忽略。
- 搜索类型： 选择使用固定字符串、通配符还是正则表达式匹配。
- 查找： 选择是否搜索项目文件（所有文件或仅打开的文件）、所选架构节点中的文件、所选目录中的文件或所选文件。

#figure(image("./img/2023-11-10 08.49.png"))

对于架构、目录列表和文件列表搜索，单击 + 添加位置。 单击铅笔图标修改所选位置。 单击红色 X 图标删除所选位置。
您可以取消选中某个位置，以暂时禁止搜索该位置。

如果选择 "架构"，单击 + 浏览架构节点。

如果选择目录列表，单击可浏览目录。 您可以单击 X 图标暂时将所选目录排除在搜索范围之外，或单击垃圾桶图标永久排除某个目录。 使用上下箭头对列表进行排序。

如果选择文件列表，可以单击 + 浏览文件。

如果选择 "打开的文件"，则会搜索当前打开的所有文件。 您可以选中 "仅搜索活动文件 "框或使用文件类型规范来限制搜索的打开文件。

右键单击源代码或其他地方的实体时，"查找 "命令可让您为所选文本字符串选择其中一个选项。 查找 "和 "查找对象 "字段会自动填写。

#figure(image("./img/2023-11-10 08.50.png"))

- 语义选项： 如果选择在 "项目文件 "或 "架构 "中查找，则可以选中 "仅在其中显示结果 "复选框，以控制报告哪些匹配结果。然后，您可以选中注释、字符串、语句和非活动代码框中的任意组合，以便在结果中包含这些类型的行。如果选中 "仅在其中显示结果 "复选框，则必须至少选中其中一个复选框。
- 替换： 选中该框可切换到 "替换文件"对话框。

指定搜索条件后单击查找。 搜索结果窗口中将显示所有匹配实例的列表。 如果搜索耗时较长，需要更改条件，可以单击停止。

=== search results

搜索结果区域会列出找到的匹配项。 结果列表中列出了出现字符串的每一行。

#figure(image("./img/2023-11-10 09.01.png"))

双击结果可查看匹配项的源代码。 这将打开源代码编辑器并高亮显示匹配项。

多个搜索结果显示在结果列表中。 右键单击窗口背景并选择全部展开可展开窗口中的所有搜索节点。 或者选择 "全部折叠"，将列表压缩到只有顶层搜索列表。

结果工具栏提供以下控制：

- 撤销和重做操作，例如，选择一行并单击该行右端的图标，即可从列表中删除搜索结果。
- 转到 "在文件中查找 "对话框。
- 在源编辑器中打开所选匹配。
- 在当前选定的结果集中搜索。

右上角的汉堡菜单(三条纹)提供以下命令：

- 显示文件显示简短名称（只有文件名）、完整名称（完整文件路径）或相对名称（相对于 项目的文件路径）。
- 按组织结果更改最新结果的组织。可以选择在每个搜索结果旁边显示文件名的平面列表、按文件分组的列表或使用架构的树形列表。
- 显示标准（Show Criteria）会在显示结果数量的行中显示用于搜索的搜索选项。
- Expand All On Search（搜索时全部展开）会在执行新搜索时展开所有行。
- 清除搜索前的结果 在运行新搜索时，会自动清除上一次搜索的结果。您可以使用 "撤消 "图标恢复已清除的结果。

在右键单击上下文菜单中，可以选择 "复制 "或 "全部复制"，将窗口内容复制为文本，以便粘贴到其他地方。

选择 "搜索">"显示搜索结果 "可以重新打开 "结果 "窗口。

=== replace in files

从菜单栏中选择 "搜索">"替换文件"，或选中 "查找文件 "工具中的 "替换 "框，即可使用 "替换文件 "工具。

#figure(image("./img/2023-11-10 09.02.png"))

该工具中的字段与 "在文件中查找 "工具中的字段相同，但有以下例外：

- 在 "替换 "字段中，您可以键入要替换匹配字符串的文本。
- 在 "搜索类型 "字段中，除了 "文件中查找 "的可用选项外，您还可以选择 "正则表达式 - 非贪婪"。
- 要在 "替换文件 "和 "查找文件 "工具之间切换，请选中或取消选中 "停止 "按钮上方的 "替换 "框。
- 如果完全确定要进行所有更改，请选中 "跳过审查 "复选框。单击 "查找 "后，更改将立即完成，而不是像下图所示那样显示出来，等待接受或驳回。

Understand检查任何未保存的源文件。 如果有未保存的文件，则必须单击 "是 "保存所有未保存的更改，然后才能进行更改或预览更改。

无论是否选中 "替换 "复选框，结果都会显示在相同的 "搜索结果 "区域。 但是，如果选中了 "替换 "框并键入了 "替换 "字符串，则会看到文本替换后的结果。

#figure(image("./img/2023-11-10 09.03.png"))

单击结果可打开 "替换预览 "视图，显示包含结果的文件在文本被替换前后的对比。 这只是预览，文本尚未被替换。

#figure(image("./img/2023-11-10 09.04.png"))

在搜索结果中，右键单击一行并选择接受 (Ctrl+K) 或接受/访问下一步 (Ctrl+Alt+P)，即可替换文本。 右键单击并选择取消结果
(Del)，拒绝替换。 如果在文件名或目录结构节点上单击右键时选择这些命令，则这些命令适用于整个文件或目录及其子目录中的所有文件。
接受和拒绝图标显示在所选结果的 "搜索结果 "右侧，单击后可接受或拒绝结果。

接受或拒绝替换后，它们会从结果列表中删除，因为你已经处理过它们。

如果要取消最近的替换，请右键单击并选择 "撤消"。

#figure(image("./img/2023-11-10 09.05.png"))

搜索结果 "区域中的其他右键命令允许你展开和折叠结果树、复制结果以及导航到上一个或下一个结果、文件或另一个搜索结果集。

== entity lacator

并非所有实体都属于 "实体筛选器 "中显示的选项卡类别。 你可以使用 "实体定位器"（Entity
Locator）查找和了解更多有关任何实体的信息，它提供了一个项目中实体的可过滤列表。
你可以按名称、实体类型、实体声明的位置、实体声明的容器或实体最后修改的时间进行过滤。 还可以使用架构层次对实体进行排序。

要打开 "实体定位器"，请从主菜单栏中选择 "搜索">"查找实体 "或 "视图">"实体定位器"。

#figure(image("./img/2023-11-10 09.06.png"))

与 Understand 中的其他窗口一样，右键单击 "实体定位器 "中任意位置的实体时，会出现该项目可用命令的菜单。

如果选中 "同步 "复选框，在其他 Understand 窗口中选择实体会导致实体定位器选择该实体，除非过滤器阻止显示该实体。

=== resizing columns

列宽的大小可以调整每一列的可见度。 您可以拖动两列之间的列头分隔线，向左调整列的大小。
或者，在显示双头箭头时双击栏标题分隔线，分隔线左侧的字段就会扩大或缩小到查看该栏所有项目所需的最大尺寸。

您可以右键单击列标题并选择冻结列，将该列移动到左侧并防止其被重新定位。

=== long VS short names(长路径, 短路径)

在 "实体"、"已声明 "和 "文件 "列中，您可以右键单击列标题或单击汉堡包菜单(三条纹)， 然后选择 "实体名称 "来设置实体名称的显示格式， 选择 "文件名称 "来设置文件名的显示格式。
对于实体，可以选择短名或全名（包括编译单元的名称）。 对于文件名，可以选择短路径、全路径或相对路径。

=== column headers

列标题是实体定位器中的工具。左键单击它们可根据该列进行排序。 右键单击一列或单击汉堡包菜单，可以查看控制实体列表、排序和过滤方式的命令。

#figure(image("./img/2023-11-10 09.09.png"))

实体列表可以按任意列排序。 左键单击列标题可在升序和降序排序之间切换。 默认排序顺序为实体名称升序。

=== choosing columns

单击实体定位器右上角的 + 图标，查看定位器列选择器。

#figure(image("./img/2023-11-10 09.10.png"))

实体列必须始终显示。您可以启用或禁用其他列。

=== filtering the list

通过每列标题下方的字段，可以过滤实体定位器显示的实体。 过滤器可以手动输入，也可以根据右键点击的内容自动输入。

例如，你可以通过 "种类 "列从下拉列表中选择一个种类进行过滤。 也可以右键单击 "种类 "列中列出的任何项目，然后从菜单中选择 "按选择过滤"。
这将过滤实体列表，使其只包含您所选种类的实体。 标题栏会显示有多少实体符合筛选条件。

或者，您也可以直接在任何字段中键入过滤器。要搜索不包含特定字符串的字段值，请键入 `!`(感叹号），然后输入过滤器。

要清除筛选器，只需删除列标题字段中的文本，或右键单击列标题并选择 "清除筛选器 "或 "清除所有筛选器"。

您可以使用 "上一个 "和 "下一个 "按钮浏览您使用过的筛选器的历史记录。

下面的示例显示了实体种类的 "按选择过滤"：

#figure(image("./img/2023-11-10 09.14.png"))

#figure(image("./img/2023-11-10 09.15.png"))

要过滤 "已修改日期 "列，左侧下拉菜单让你选择一个比较运算符（<, <=, =, >=, >），右侧下拉菜单让你从日历中选择一个日期。
您可以通过键入修改时间。 要过滤实体，除了日期外，还必须选择比较运算符。

#figure(image("./img/2023-11-10 09.16.png"))

同样，您可以通过 "选择列 "启用度量列，使用比较运算符进行筛选。 例如，您可以过滤实体，只显示循环复杂度大于某个值或注释与代码比小于某个值的实体。

右键单击一列或单击汉堡包菜单可查看该列的上下文菜单。 你可以选择过滤器的大小写敏感度为大小写敏感或大小写不敏感（默认）。
还可以将筛选模式语法设置为使用固定字符串（默认）、通配符或正则表达式。

- 固定字符串： 如果在列值的任何位置找到精确的字符串，就会匹配您输入的字符串。
- 通配符： 通配符是 \* 或 ?，其中 \* 匹配任意长度的字符串，而 ? 匹配单个字符。例如，??ext_io 可匹配以 ext_io 结尾且包含 8
  个字母的任何名称。
- 正则表达式： 过滤和处理文本的一种强大而精确的方法。如果使用正则表达式，则不能使用大小写敏感选项。

使用 ! 搜索不包含特定字符串的字段值，可以与任何过滤模式语法一起使用。

下表列出了正则表达式中使用的一些特殊字符。

#figure(image("./img/2023-11-10 09.17.55.png"))

#figure(image("./img/2023-11-10 09.18.40.png"))

对正则表达式的全面解释超出了本手册的范围。 Unix 用户可以使用 "man -k regex "命令查看 regex 的手册页面。 如需全面解释，请参阅
O'Reilly and Associates 出版的"Mastering Regular Expressions"一书
(www.ora.com/catalog/regex)。

== finding windows

如果打开了多个窗口，可以使用窗口菜单中的选项来组织或查找特定窗口。

选择窗口 > 关闭 `<当前窗口>` 可以关闭当前文档窗口。 选择窗口 > 关闭所有文档窗口，可以关闭所有源文件、图形视图和其他文档窗口。
如果打开了多个窗口，可以右键单击正在使用的窗口的选项卡， 然后选择全部关闭、除此窗口外全部关闭、向左关闭所有选项卡或向右关闭所有选项卡。

#figure(image("./img/2023-11-10 09.21.png"))

选择 "窗口">"释放窗口"，将选项卡区域更改为可在屏幕上调整大小和移动的独立窗口。 从已释放窗口右上角的汉堡包菜单中选择捕捉窗口，将该窗口替换为主窗口。

窗口菜单还允许您使用窗口 > 垂直分割工作区或窗口 > 水平分割工作区来分割文档区域。 当文档区域被分割时，在选中其复选框的那一半区域会打开新的区域。
您可以根据需要将选项卡从文档区域的一半拖到另一半。 选择窗口 > 取消分割工作区可移除分割。

使用窗口 > 将窗口重置为默认布局可返回原始布局。

窗口 > 窗口导航器命令（Ctrl+Tab）可打开当前打开窗口的临时列表。 按回车键或双击列表中的项目时，列表将消失，而焦点将指向所选项目。 打开
Windows 导航器时按 Tab 键可循环浏览项目列表。 按 Esc 键可以在不选择窗口的情况下退出该区域。

#figure(image("./img/2023-11-10 09.22.png"))

您可以从 "显示 "列表中选择一种窗口类型，从而减少此处列出的窗口数量。 或者，也可以在 "筛选器 "框中输入。

选中字母排序框可以对停靠窗口和文档窗口进行排序。

默认情况下，如果按下 Ctrl+Tab 键，Windows 导航器会关闭， 并在松开 Ctrl 键时切换到所选窗口。 (您可以选中 "粘滞 "复选框，使
Windows 导航器等待您按 Enter 或双击。

=== source visiting history(源代码访问历史?)

您可以使用工具栏上的 "上一页 "和 "下一页 "图标，向前或向后查看源代码的历史访问位置。 即使在不同的理解会话之间，历史记录也会被保存。

您可以单击向下箭头查看历史记录中的源代码位置列表。 您可以从下拉的 "返回 "列表中选择 "清除历史记录 "来清除浏览历史记录。

=== view menu commands

如果在此会话期间分析过项目，可以使用查看 > 分析日志命令重新打开日志。

查看 > 窗口选择器 "命令会打开一个区域，列出当前打开的窗口。 单击窗口名称使其处于活动状态。

#figure(image("./img/2023-11-10 09.23.png"))

默认情况下，该区域只列出文档窗口，但您可以使用 "显示 "下拉菜单更改列出的窗口类型。 任何已发布的窗口都以斜体下划线显示。
图标显示窗口类型，包括源文件是否未保存。

当 "选择器 "区域处于活动状态时，您可以在该区域底部键入过滤器，以快速缩小列表范围。 按 Backspace 键可删除筛选器。

您可以使用汉堡包菜单将顺序从字母顺序改为最近使用的顺序或文件扩展名顺序。 还可以使用汉堡包菜单更改文件名格式，以显示短路径、相对路径或绝对路径。

使用选择器可以方便地在多个窗口上执行关闭等操作， 方法是从列表中选择多个窗口，单击右键，然后选择关闭所选窗口或关闭未选窗口。

如果在源代码中创建了书签，则可以使用查看 > 书签命令打开书签列表。

=== displaying toolbars

在工具栏或菜单栏上单击右键并选择一个类别，即可在主 "理解 "窗口中隐藏或显示工具栏图标的类别。 工具栏分为以下类别：
项目、文件、编辑、分析、编辑器历史记录、图表、用户工具、浏览、分割工作区、作用域和搜索。

您还可以通过选择 "视图">"工具栏 "来隐藏和显示工具栏图标。

#figure(image("./img/2023-11-10 09.24.png"))

=== session browser

understand使用最新的会话布局打开项目。 对打开的工具、工具栏、选项卡和其他功能及其大小和位置所做的更改会自动保存为会话的一部分。
您可以使用会话浏览器创建并保存多个会话布局。 选择windows > session browser可查看会话列表。
您可以使用该区域的工具栏图标将当前布局添加为会话、从列表中删除当前高亮显示的会话、
复制高亮显示的会话以便从此处修改布局、重命名高亮显示的会话以及按名称筛选会话列表。

#figure(image("./img/2023-11-10 09.25.png"))

要返回原始布局，请选择windows > Reset Windows to Default Layout.

会话信息存储在项目文件夹中的 session.json 文件中，可以与其他用户共享。

== searching in a file

本节所述的搜索技术用于搜索单个源文件。

=== find next and previous

要在当前文件中快速搜索，请按 Ctrl+F（或选择搜索 > 查找）。 源代码编辑器的状态栏会变为搜索栏。

#figure(image("./img/2023-11-10 09.27.png"))

您可以在字段中键入一个字符串。 当你输入时，源代码编辑器中会高亮显示该字符串的匹配项。 如果文件中不存在该字符串，搜索栏会变成红色。

使用 Ctrl+F 移动到下一个出现的字符串。 使用 Ctrl+Shift+F 查找上一次出现的内容。

单击 "上一个 "或 "下一个 "箭头从一个匹配项移动到另一个匹配项。 你可以选中大小写敏感和整词复选框来修改搜索的执行方式。

如果选中隐藏框，那么只要点击代码，增量搜索栏就会隐藏。 再次按下 Ctrl+F 时，就会显示上次的搜索结果。

=== find & replace

如果要在单个源代码文件中使用 "查找和替换 "或正则表达式进行搜索， 可以使用 "查找 "对话框。 要打开此对话框，请选择seaerch > find and
replace菜单项或按 Ctrl+Alt+F。

#figure(image("./img/2023-11-10 09.29.png"))

在查找字段中，键入要查找的字符串。

可以选中 Regular expression, Match case, or Match whole words 来修改搜索的执行方式。
如果选中正则表达式复选框，就可以使用 Unix 风格的模式匹配。

如果要替换搜索到的字符串，请在 "替换 "字段中键入。

单击 "上一步 "或 "下一步"，向任一方向搜索。 如果要替换当前文件中找到的字符串，请单击 "全部替换"、"替换 "或 "替换和查找"。

查找对话框只搜索单个文件。

=== contextual information(上下文信息)

上下文信息 "视图类似于 "范围列表"，但功能更强大。 从菜单中选择 View > Contextual Information，即可打开该视图。 单击 "源编辑器 "工具栏中的图标可打开或关闭 "上下文信息 "视图。

#figure(image("./img/2023-11-10 09.31.png"))

该视图显示当前活动的源编辑器的结构。选项卡提供以下信息：

- 结构浏览器：
  这是当前文件的扩展范围列表。它列出了文件中的结构名称。除函数外，它还列出了包含、宏、类等。名称旁边的图标表示实体的类型。如果将鼠标光标指向某个项目，悬停文本会显示实体类型和名称。按
  Ctrl+F 在此选项卡中搜索。
- 文件信息： 此选项卡提供当前文件的信息浏览器。
- 范围信息： 该选项卡提供当前实体的信息浏览器，即在 "结构浏览器 "选项卡中突出显示的实体。
- 上下文浏览器： 该选项卡左侧显示当前实体在层次结构中的位置，右侧显示其包含的实体。

文件信息 "选项卡右侧的切换图标会将 "源编辑器 "和 "上下文信息 "视图中的当前文件更改为同一目录下名称相同但扩展名不同的文件（"伴生文件"，如果存在的话）。例如，切换图标可以从
`*.c` 或 `*.cpp` 文件切换到同名的 `*.h` 文件。

一如既往，右键单击这些标签页中的任何一个，都会提供有关每个实体更多信息的链接。

= editing your source

本章介绍 Understand 的源代码和文本文件编辑器。

== source editor

源代码编辑器是一个功能齐全的源代码编辑器，具有语法着色功能，右键可访问代码中大多数实体的信息。

行号和用于展开/折叠代码块的 "折叠 "标记可以在 "工具">"选项 "命令打开的understand options对话框的 "编辑器 "类别中打开或关闭。
还可以在编辑器类别中更改显示字体和其他一些项目。 还可以在该对话框类别中启用书签、缩进引导标记和右边距标记（页面引导）。

通过understand options对话框的editor > advanced类别，
您可以控制从源代码编辑器打印时的格式、搜索时滚动条中的高亮显示、复制粘贴行为、自动完成、自动缩进等。

通过understand options对话框中的editor > styles类别，可以更改不同类型源代码所使用的颜色和样式。
按键绑定类别显示了可在编辑器中使用的按键列表（并允许你修改列表）。

=== file icons

源代码编辑器中的每个文件在其选项卡中都有一个图标。 图标中的字母表示文件使用的语言。 如果文件已修改但未保存，图标为蓝色，文件名旁边会显示一个星号。
如果文件已在文件系统中删除，则选项卡中的文件名显示为删除线文本。

=== scope list

作用域列表对于在大文件中跳转非常有用。 通过从工具栏上的作用域下拉列表中进行选择， 可以跳转到当前源文件中的特定函数、存储过程或其他特定语言结构体。
构造按字母顺序列出。 下拉列表显示了上次分析项目时文件中的所有此类结构体。

#figure(image("./img/2023-11-10 09.37.png"))

您可以选择 View > Scope List ，在entity filter显示区域的scope tab中打开列表。 结构体开始的行号也会显示出来。

#figure(image("./img/2023-11-10 09.38.png"))

单击项目可在信息浏览器中查看相关信息。 双击一个项目，可跳转到声明或创建该项目所在的位置， 并高亮显示当前源文件中出现该名称的所有位置。

您可以右键单击范围选项卡，从上下文菜单中选择排序顺序。 升序和降序按字母顺序排序或按字母顺序倒序排序。 默认情况下是按行号排序。

#figure(image("./img/2023-11-10 09.39.png"))

=== toolbar

源代码编辑器的工具栏可能包含以下图标：

使用汉堡包菜单中的工具栏部分类别，可以隐藏或显示源代码编辑器工具栏中的所有图标。可用的工具栏部分有

#figure(image("./img/2023-11-10 09.42.43.png"))

- 作用域：选择要跳转到的函数或类似实体。请参阅 "范围列表"。
- 分割编辑器：水平、垂直分割源代码编辑器窗口，或删除分割。
- 版本控制 执行 Git 整合操作。显示/隐藏空白处的 "责备 "栏，打开未提交更改差异视图。
- 停靠窗口： 显示/隐藏上下文信息视图和注释查看器。
- 浏览模式：切换浏览模式的开启或关闭。
- 释放窗口： 在主窗口中释放/捕获窗口。
- 问题：移动到源代码中发现的下一个/上一个问题。这些问题可能由 CodeCheck 或项目分析检测到。单击 "注意 "图标打开 "问题 "侧边栏，其中提供了问题描述。

#figure(image("./img/2023-11-10 09.42.09.png"))

=== status line

当 "源代码编辑器 "是活动窗口时 ，understand窗口底部的状态栏会显示 CodeCheck 上次在该文件上运行的时间
、光标位置的行号和列号、该文件的制表符宽度设置 、文件是读写模式还是只读模式以及源代码语言。

#figure(image("./img/2023-11-10 09.423.png"))

如果单击状态栏中的行号（或从菜单中选择Search > Go to Line），则可以使用转到行对话框。

如果单击制表符宽度，可以更改此文件的制表符宽度。

#figure(image("./img/2023-11-10 09.44.png"))

如果单击 RW（读写）指示器，则会将模式更改为 RO（只读）。

如果点击语言，则可以选择该文件使用的语言。

=== selecting and copying text

可以选择（标记）文本，然后剪切或复制到 Windows（或 X11）剪贴板。 选择文本按照所用操作系统的标准进行。 在 Windows
系统中，按住鼠标左键拖动即可选择文本。 或者，你也可以按住 Shift 键并移动光标（通过箭头或鼠标）。 在 "编辑 "菜单或上下文菜单中选择 "全选 "命令来选择整个文件。

如果按住 Alt 键（X Windows 上为 Ctrl 键）， 可以拖动鼠标来选择源代码的矩形区域， 例如，将左侧空白处的制表符排除在复制文本之外。
你也可以在源代码编辑器中粘贴矩形区域的代码。

#figure(image("./img/2023-11-10 09.45.png"))

选择文本后，可以使用编辑菜单或上下文菜单中的剪切和复制命令。 然后，您可以根据需要将文本粘贴到其他应用程序中。

对于有类路径和文件的实体，复制命令可以复制简短名称。 上下文菜单中的 "复制全名 "命令可以复制完整的类路径或文件路径。

=== browse mode

单击编辑器工具栏上的浏览图标或从菜单中选择view > browser mode，即可将源码编辑器切换到browser模式。 进入浏览模式后，图标会突出显示。

如果在source editor工具栏中看不到browser图标， 请从source editor的汉堡包(三条纹)菜单中选择Toolbar Sections
> Browse Mode。

在浏览模式下，代码中的实体就像链接一样。 当鼠标光标移动到链接处时，会显示下划线。 单击链接会移动到该实体的声明处，并更新信息浏览器以显示该实体的详细信息。

如果找不到单击的实体声明，状态栏中会显示一条信息，电脑也会发出蜂鸣声。

在浏览模式下，你仍然可以编辑文件，键盘和右键功能与常规模式下相同。 只有左键单击鼠标有所不同。

在使用源代码编辑器窗口时，按住 Ctrl 键可以暂时进入浏览模式。

=== context menu

源编辑器中的上下文菜单提供了许多探索和编辑功能。 许多功能可让您查找右键单击实体的相关信息。 上下文菜单中通常包含以下探索功能（取决于单击的位置）：

- 查看信息
- 图形视图
- 查看依赖关系
- 交互式报告
- 添加到收藏夹
- 比较
- 分析
- 添加/移除到架构
- 注释
- 探索
- 在...中查找
- 浏览指标
- 隐藏不活动的行
- 添加书签

上下文菜单中通常还包括以下编辑功能：

- 重构
- 撤销/重做
- 剪切/复制/粘贴
- 复制全名
- 全选
- 从项目中删除
- 编辑文件
- 跳转到匹配块
- 选择块
- 隐藏/显示不活动的线条
- 全部折叠
- 软包边
- 批注选择/取消批注选择
- 排序选择
- 更改大小写
- 重新缩进选择/文件
- 还原

=== hover text

如果将鼠标光标指向源代码中的实体，就会看到一条显示该实体声明信息的信息。
例如，指向变量会显示变量的类型，指向常量会显示常量的值，指向函数调用会显示参数和返回值。

#figure(image("./img/2023-11-10 10.17.png"))

== saving source code

如果您编辑了源文件，可以单击保存更改。

或者按 Ctrl+S 或选择文件 > 保存。

您可以选择文件 > 另存为，保存为不同的文件。
如果将项目文件保存为另一个文件名，系统会询问您是否要将新文件添加到项目中。

如果您编辑了多个源文件，可以单击保存所有修改的文件。

或选择文件 > 全部保存为

如果想忽略上次保存后所做的更改，请右键单击文件并选择还原。

你可以从菜单中选择窗口 > 关闭 `<当前文件>` 来关闭当前源文件。
也可以用鼠标中键单击源文件区域上方的选项卡来关闭该选项卡（如果鼠标有中键的话）。

您可以选择窗口 > 关闭所有文档窗口来关闭所有源文件。
也可以右键单击源文件区域的选项卡，
然后选择关闭、全部关闭、关闭除此以外的所有选项卡或关闭右侧/左侧的所有选项卡。

== refacotring(重构) tools

重构工具允许你对代码进行结构性修改。
理想情况下，重构不会改变代码的行为。

重构工具允许您使用代码比较窗口预览更改。
重构更改可能会对代码产生重大影响，因此在提交之前应进行审查，以确保更改是正确的。

#figure(
  image("./img/2023-11-10 10.20.png")
)

以下重构工具可用于所选实体或代码：

- 重命名
- 内联函数
- 提取函数
- 内联范围
- 内联温度
- 提取临时文件

如果选择重构命令时文件尚未保存，系统会询问您是否保存文件并重新分析项目。
我们建议您这样做，以便 Understand 项目分析包含项目的最新信息。

#figure(
  image("./img/2023-11-10 10.21.png")
)

如果您执行了重构操作，然后决定不需要该更改，
请右键单击并从上下文菜单中选择 "重构">"撤销"。
在某些情况下，由于后续更改，重构操作无法撤销。

=== renaming entities

提供重命名实体的命令是为了支持代码重构，使代码更易读。
通过该命令，您可以在整个项目中更改实体的名称。
refactor > rename 命令与文件中的替换类似。
但不同的是，refactor > rename 命令会确定哪些用途适用于特定实体。
这使它成为重命名以下内容的更好方法：
本地使用的变量、应用程序中具有各种名称空间的实体，
以及名称可能是另一个实体名称一部分的实体（例如，重命名 "src "变量而不重命名 "srcTimer"）。

要使用 Refactor > Rename 命令，请按以下步骤操作：

1.

高亮显示要更改的实体名称（例如函数或参数）。

2.

右键单击并从上下文菜单中选择refactor > rename。

3.

在对话框中为该实体键入新名称，然后单击preview changes。
如果所选实体是 C++ 覆盖或宏，则会提供其他选项：

- 如果所选实体是基类声明为虚拟的类方法，且派生类也实现了该方法，则可以选中rename overrides，以重命名方法覆盖。
- 如果所选实体是名称相同但参数不同的重载类方法，则可以选中重命名重载来重命名派生方法。
- 如果所选实体有一个同名的宏，可以选中rename in macros来重命名实体及其匹配宏。

4.

如果完全确定要执行重命名操作，请单击 apply changes。

5.

此时会打开一个对话框，让您检查使用该实体名称的所有实例以及如何更改该名称。

#figure(
  image("./img/2023-11-10 10.25.png")
)

6.

如果确定要进行所有更改，请单击确定。

=== inlining functions

内联函数是一种常见的优化技术，
它将函数的代码放在调用该函数的位置，
而不是放在单独的函数中。
在编译语言中，这通常可以通过编译器优化来实现，
但出于各种原因（包括代码清晰度），
内联源代码可能是有用的。
需要注意的是，内联需要权衡利弊。
如果一个函数在很多地方被调用，内联代码会导致代码体积增大，代码可维护性降低。

要使用 Refactor > Inline Function 命令，请按照以下步骤操作：

1.

高亮显示要内联的函数名称。

2.

右键单击并从上下文菜单中选择重构 > 内联函数。

3.

单击预览更改。如果完全确定要执行内联操作，请单击 "应用更改"。

4.

系统将打开一个对话框，让您检查所有将发生的更改。exploring difference介绍了此对话框中的图标和下拉菜单。

#figure(
  image("./img/2023-11-10 10.28.png")
)

5.

如果确定要进行所有更改，请单击确定。

=== extracting functions

与函数内联相反的是函数提取。
您可以将某些代码抽取到一个单独的函数中，
这样它就可以在多个地方被调用，
并在一个地方被维护。
要使用 Refactor > Extract Function 命令，请按照以下步骤操作：

1.

反白要提取为函数的代码。

2.

右键单击并从上下文菜单中选择重构 > 提取函数。

#figure(
  image("./img/2023-11-10 10.31.png")
)

3.

为要提取并从该代码位置调用的函数键入一个名称。

4.

选择函数要返回的值或变量。

5.

对于要传递给函数的参数，可以使用 "上移 "和 "下移 "按钮更改顺序，并选中复选框以确定以常量值或引用方式传递的参数。

6.

单击预览更改。如果完全确定要执行操作，请单击 "应用更改"。

7.

此时会打开一个对话框，让您检查将要发生的所有更改。exploring difference介绍了此对话框中的图标和下拉菜单。

#figure(
  image("./img/2023-11-10 10.32.png")
)

8.

如果确定要进行所有更改，请单击确定。

=== inlining scope

内联作用域重构可用于将普通枚举改为枚举类，
或删除 "using namespace" 语句。
枚举声明将更改为enum class声明，枚举的名称将被添加到使用枚举值的地方。

要使用 Refactor > Inline Scope 命令，请按以下步骤操作：

1.

高亮显示源代码或信息浏览器等工具中的枚举名称。

2.

右键单击并从上下文菜单中选择重构 > 内联范围。

#figure(
  image("./img/2023-11-10 10.35.png")
)

3.

单击预览更改。如果完全确定要执行操作，请单击 "应用更改"。

4.

这时会打开一个对话框，让您检查将发生的所有更改。
exploring difference介绍了此对话框中的图标和下拉菜单。

=== inline temp

内联临时重构可用于初始化后不再设置的局部变量或临时变量。
内联后，该变量的使用将替换为初始化后的表达式。
在下面的示例中，
只要 patlen 和 altmin 的值在初始化和使用 patlen 之间不发生变化，
就可以将 patlen 内联为 altmin：

```cpp
int patlen = altmin;

for (k = str + patlen - 1; k < strend;) {
  ...
}
```

要使用 Refactor > Inline Temp 命令，请按照以下步骤操作：

1.

反白要内联的变量。

2.

右键单击并从上下文菜单中选择 Refactor > Inline Temp。

3.

如果希望替换变量的表达式用小括号包围，请选中复选框。

4.

单击预览更改。如果完全确定要执行操作，请单击 "应用更改"。

#figure(
  image("./img/2023-11-10 10.38.png")
)

5.

系统将打开一个对话框，让您检查所有更改. exploring difference介绍了此对话框中的图标和下拉菜单。

#figure(
  image("./img/2023-11-10 10.39.png")
)

6.

如果确定要进行所有更改，请单击确定。

=== extract(提取) temp

与内联临时变量相反的是提取临时变量。如果您有一个复杂的表达式，您可能希望将该表达式的一部分赋值给一个局部变量或临时变量，以便在该函数中重复使用您选择的表达式。

要使用 Refactor > Extract Temp 命令，请按照以下步骤操作：

1.

选中要提取到局部变量或临时变量的表达式。

2.

右键单击并从上下文菜单中选择 Refactor > Extract Temp。

3.

在对话框中为提取的变量键入名称，然后单击预览更改。如果完全确定要执行操作，请单击 "应用更改"。

#figure(
  image("./img/2023-11-10 10.40.png")
)

4.

系统将打开一个对话框，让您检查所有更改,
exploring difference介绍了此对话框中的图标和下拉菜单。

#figure(
  image("./img/2023-11-10 10.41.png")
)

5.

如果确定要进行所有更改，请单击确定。

== other editing features

源代码编辑器还提供了其他几个显示和编辑文件的选项：

- 预览器，
- 括号匹配
- 折叠和隐藏
- 更改源代码字体大小 
- 分割编辑器窗口
- 更改大小写
- 注释和取消注释
- 缩进
- 换行
- 插入和套打模式
- 按字母顺序排序行
- 键盘命令
- 录制、播放和保存宏
- 创建和打开文件
- 书签
- 管理源代码编辑器选项卡

=== previewer

预览器窗口类似于源代码编辑器窗口。
要打开预览器窗口，请选择View > Previewer。
预览器与源代码编辑器的区别如下：

- 不能在预览器窗口中编辑代码。
- Sync checkbox；如果选中此复选框，单击另一个视图（如实体过滤器）中的实体时，将打开预览器中定义实体的位置。
- Prefer checkbox；如果选中此复选框，则双击另一视图中的实体时，将打开预览器中定义实体的位置，而不是源编辑器。(在预览器中双击总是会移动到源编辑器中的该行）。

#figure(
  image("./img/2023-11-10 10.45.png")
)

=== bracket matching

Understand 编辑器的一项便捷功能是语法括号匹配。
使用该功能可以找到与大括号、小括号或括号匹配的结尾字符。
匹配的符号有 `( )`、`{ }` 和 `[ ]`。注释内不进行匹配。

按下 Ctrl+j（或右键单击并Jump to Matching Brace），
编辑器会跳转到匹配的结尾或开头括号。
除非编辑光标位于可以匹配的符号旁边，否则 Ctrl+j 不会激活。
再按一次 Ctrl+j 就会回到开始的位置。
您也可以从菜单中选择Search > Go to Matching Brace。

按 Ctrl+Shift+J（或右键单击并Select Block）可以选择从括号到匹配括号的所有文本。

将光标移至没有匹配的括号时，该括号会以红色高亮显示。有匹配的括号则以绿色高亮显示。

当光标位于匹配的预处理器指令上时（例如 `#ifdef` 和 `#endif`），
可以使用 Ctrl+j（或右键单击并Jump to Matching Keyword）将编辑光标移动到匹配处。

=== folding and hiding

行号旁边的三角形允许你 "折叠 "代码，以隐藏函数、if 语句和其他有开头和结尾的语句等代码块。

#figure(
  image("./img/2023-11-10 10.48.png")
)

再次点击三角形或点击代码。

代码中的绿点打开折叠后的代码。

如果右键单击代码，可以选择 "全部折叠 "来关闭所有打开的代码块。

在 `//` 被视为注释开头的语言中，您可以为代码添加明确的折叠标记。例如

```cpp
//{{ /* 代码折叠后隐藏 */ //}}
```

您还可以右键单击并选择Hide Inactive Lines，
以隐藏因未定义预处理器宏而未激活的预处理器行。
选择show Inactive Lines可再次查看所有行。

=== Changing the Source Code Font Size

使用 tools > options 命令打开的 "选项 "对话框的 "编辑器 "类别中，
可以更改默认显示字体和字体大小。

=== splitting the editor window


您可以垂直或水平分割源代码编辑器窗口，
以便滚动查看文件中的多个位置。
这些分割图标显示在工具栏中：

#figure(
  image("./img/2023-11-10 10.50.32.png")
)

单击 splite vertically 或 splite horizontally 图标，
将源码编辑器分割成两个或多个可单独滚动的窗格。
源编辑器窗口不能双向分割，
但可以在同一方向多次分割。
单击 "移除分割"（Remove Split）图标，
从光标当前所在的窗格中移除分割层。

#figure(
  image("./img/2023-11-10 10.51.png")
)

=== changing case


您可以在源代码编辑器中更改所选文本的大小写。
请按照以下步骤操作：

1.

在源代码中选择一个或多个单词。

2.

从菜单中选择 "编辑">"更改大小写"，或右键单击并从上下文菜单中选择 "更改大小写"。

3.

选择要应用于选中内容的大小写类型。选择如下：

#figure(
  image("./img/2023-11-10 10.52.53.png")
)

=== commenting and uncommenting


您可以通过右键单击并选择 "注释选区 "来注释所选代码。
要删除注释字符，请右键单击并选择取消注释选区。
您还可以使用菜单中的 "编辑 > 注释选区 "和 "编辑 > 取消注释选区 "命令来完成同样的操作。

分析项目时不分析注释

=== indentation

您可以单击窗口底部状态栏中的制表符宽度，
打开一个对话框，设置文件中每个制表符的列数。
此设置为每个文件单独保存，并覆盖选项对话框中编辑器类别的设置。

通过选择代码、右键单击并选择 "重新缩进选择"，
可以使所选代码的缩进符合标准用法。
缩进首选项由 "选项 "对话框中的 "编辑器">"高级 "类别控制

#figure(
  image("./img/2023-11-10 10.58.png")
)

=== insert and overtype modes(插入模式? 重(chong)打模式?)

通常情况下，键入光标右侧的文本会在键入时移动。
这称为插入模式。
要在 "插入 "模式和 "套打 "模式之间切换，
在 "插入 "模式下，
光标右侧的文本会在输入时被逐个字符替换，
请按 "插入 "键或从菜单中选择 Edit > Toggle Overtype。

=== sorting lines alphabetically

要将一组行按字母顺序排序，请选中这些行，右键单击并选择 "排序选择"。

=== keyboard commands

要查看可在源代码编辑器中使用的按键列表，请选择 "工具">"选项"，
然后转到 "按键绑定">"编辑器 "类别。
例如，Ctrl+Alt+K 剪切光标位置到行尾的文本。
而 Ctrl+T 则会将光标位置处的行与其上方的行换行。

另一种查看按键绑定列表的方法是选择 "帮助">"按键绑定"。
搜索 "编辑器 "一行（第 140 行左右），即可看到源代码编辑器窗口按键的开头。

=== recording, playing, and saving macros

您可以录制和重放一组编辑更改，以便重复使用。这就是所谓的宏。要录制宏，请按照以下步骤操作：

1.

从菜单中选择工具 > 编辑器宏 > 录制宏，或按 Ctrl+Alt+M。

2.

在源代码编辑器中执行您希望重复的步骤。

3.

选择工具 > 编辑器宏 > 停止录制，或按 Ctrl+Alt+M。(请注意，如果宏结束时光标不在源编辑器中，则在移回源编辑器之前无法停止录制）。

要重放最近录制的宏，请将光标移动到所需的开始位置，然后选择工具 > 编辑器宏 > 重放宏或按 Ctrl+M。

您可以保存最近录制的宏，方法是选择工具 > 编辑器宏 > 保存宏或按 Ctrl+Shift+M。
系统会要求您键入宏的名称。您还可以移动到快捷方式字段，按下要用于触发该宏的组合键。

#figure(
  image("./img/2023-11-10 11.03.png")
)

您可以在 "理解选项 "对话框中重命名和删除已保存的宏，
方法是选择 "工具">"编辑器宏">"配置宏"。

=== creating and opening files

您可以使用源代码编辑器创建一个无标题的空白文件，方法是从菜单中选择文件 > 新建 > 文件。
无论文件是否在项目中，都可以通过选择文件 > 打开 > 文件来打开。

右键单击文件名时，上下文菜单会提供 "编辑文件 "和 "编辑伴生文件 "选项。
例如，encrypt.c 的配套文件是 encrypt.h。

=== bookmarking

右键单击一行，从上下文菜单中选择添加书签，即可在代码中创建 "书签"。
或者从菜单中选择编辑 > 书签 > 切换书签。带有书签的行旁边会有一个红色箭头。

#figure(
  image("./img/2023-11-10 11.04.png")
)

在有多个书签的文件中，你可以右键单击并选择上一个书签或下一个书签，在文件中快速移动位置。

从菜单中选择查看 > 书签，即可打开书签区域，查看所有文件中的所有书签列表。

#figure(
  image("./img/2023-11-10 11.05.png")
)

如果您指向书签区域中的书签代码，悬停文本中将显示书签行周围的 5 行代码。

双击书签可移动到源代码编辑器中的该位置。
如果在实体内创建书签，书签区域会显示包含书签的实体名称和类型。
例如，如果在函数内的一行代码上创建书签，则会显示函数名称。

书签和收藏夹为用户本地存储。

通过该区域的工具栏，可以通过以下方式管理书签：

- 使用 "按图标查看 "在基于文件的视图和基于类别的视图之间切换。基于文件的视图可展开文件名查看该文件中的书签。基于类别的视图可让你将书签分配到你创建的类别中。
- 选择书签并单击该图标可更改类别。要创建类别，请键入名称并单击确定。要使用现有类别，请从列表中选择该类别。
- 选择一个书签，然后单击此图标删除该书签。
- 在基于文件的视图中选择一个文件，然后单击此图标删除该文件中的所有书签。也可以选择一个书签并单击此图标，删除包含所选书签的文件中的所有书签。
- 选择一个书签并单击此图标，将其标记为临时书签，标记为临时书签 24 小时后删除。
- 在基于类别的视图中选择一个类别，单击此图标可删除该类别中的所有书签和类别本身。
- 单击此图标可删除所有书签。

#figure(
  image("./img/2023-11-10 11.07.49.png")
)

#figure(
  image("./img/2023-11-10 11.08.15.png")
)

书签区域右上角的汉堡菜单提供了, 以下命令的汉堡包菜单：

- 双击时复制到剪贴板： 双击书签列表中的一行可跳转到代码中的该位置。如果启用该选项，双击既能跳转到代码中的该位置，又能将该行代码复制到剪贴板。
- 显示原始缩进： 启用此选项可显示与源代码缩进一致的代码行。

=== managing source editor tabs

右键单击源编辑器顶部的选项卡时，一些命令允许你控制选项卡的行为。

#figure(
  image("./img/2023-11-10 11.10.png")
)

如果选择 "Show Tab Title as"，
就可以缩短或加长源代码编辑器选项卡中的文件名。
同样，如果选择 "Show Window Title as"，
则可以缩短或加长 Understand 标题栏和任何独立源编辑器窗口中的文件名。
Copy Filename"命令可将长文件名、相对文件名或短文件名复制到剪贴板。

如果选择 "Release Window"，标签区将变为一个可在屏幕上移动的独立窗口。
单击已释放窗口右上角的图标并选择 "Capture Window"
该窗口就会返回到Understand窗口中的一个选项卡。

== annotations?(注释, 与代码中的comment不同)

对于 Understand 用户来说，
注释是一种简单方便的添加文档的方式，
无需直接修改源代码，
但仍可在代码上下文中快速查看注释。
注释可以应用于代码行、实体或文件。
你可以将文件附加到注释中，并与整个团队共享。

你可以与代码联机查看注释，
也可以在注释浏览器或注释查看器中查看注释。
要打开注释浏览器，
请从菜单中选择Annotations > Browse All Annotations。
要打开注释查看器，请从菜单中选择Annotations > Annotation Viewer。

#figure(
  image("./img/2023-11-10 11.12.18.png")
)

在使用注释实体的任何地方，包括在图表和信息浏览器中，都可以通过悬浮文本看到注释。

#figure(
  image("./img/2023-11-10 11.13.png")
)


注释可以用标签 "标记"，如 `#review` 或 `#refactored`。
这种标记对于整理待办事项列表或将问题分配给他人非常有用。

=== viewing annotations

默认情况下，在源代码编辑器窗口中，注释由窗口右侧边缘带有三个点的图标表示。
如果 "注释查看器 "未打开，而您指向其中一个图标，则注释会显示在一个悬浮窗口中。
如果点击图标或悬浮窗口，注释查看器就会打开并选中该注释。
如果 "注释查看器 "已打开，单击指示器图标可在 "注释查看器 "中选择该注释。
如果对实体进行了注释，指向该实体的使用会在悬停文本中显示注释。

您可以使用 "工具">"选项 "对话框中注释类别的设置更改默认行为，具体如下：

- 在Open Annotations字段中选择 "弹出窗口"，则无法打开注释查看器。
- 在 "编辑器显示 "字段中选择 "内联 "会隐藏指示器，而显示与源代码内联的注释。
- 在 "编辑器显示 "字段中选择 "无"，则会同时隐藏注释指示器和内联注释。
- 取消选中 "在实体悬停文本中显示注释 "会在指向注释实体时隐藏注释。

您还可以使用 "选项 "对话框中的 "注释 "类别设置注释显示的名称，
控制注释文本和背景的颜色，以及在打印时隐藏或显示注释。

=== sharing annotations

注释旨在与团队其他成员共享。
注释存储在项目文件夹中（名为 `project_name.und`）。

在 `project_name.und` 文件夹中，
有一个单独的 JSON 文件存储项目每个用户创建的注释。
这些文件名为 `ann_username.json`。
媒体文件（media.json）列出了附加到注释的任何文件，
这些文件存储在项目文件夹的媒体子文件夹中。

打开注释浏览器并从汉堡菜单中选择Export Annotations to CSV，即可导出注释。

=== searching for annotations

要打开注释浏览器，请从菜单中选择Annotations > Browse All Annotations。
该浏览器会按照作者、创建日期、文件目录结构和您创建的任何标记对注释进行排序。
单击汉堡包菜单图标，可以隐藏其中任何分组。

要搜索注释，请在 "筛选器 "字段中输入。
这将搜索注释的文本。
默认情况下，搜索不区分大小写，也不允许使用通配符或正则表达式。
您可以使用汉堡菜单更改这些默认值。

也可以在注释查看器的 "过滤器 "字段中输入注释进行搜索。
请注意，注释查看器只显示当前查看的源文件中的注释，而注释浏览器则显示项目中的所有注释。

信息浏览器还会列出所选实体的任何注释。

=== adding annotations

您可以通过以下方式添加注释：

- 右键单击understand中几乎任何地方的实体或文件名，然后从右键菜单中选择 "注释"。例如，您可以在源代码、信息浏览器或实体过滤器中选择实体。根据所选实体的类型，您可以选择注释该实体（在其出现的所有位置）、包含的实体（如函数或类）、源文件行号或源文件。(如果文件尚未作为项目的一部分保存和分析，则无法注释行号。行号发生变化时，行号注释会尽可能更新）。

#figure(
  image("./img/2023-11-10 11.21.png")
)

- 选择一个实体，然后从注释 > 注释菜单中选择。
- 在源文件中选择一个位置或实体，然后单击注释查看器中的加号图标。如果在注释查看器中选择一个现有注释并单击加号图标，就可以对所选注释进行回复。

无论何时创建注释，注释查看器都会打开并添加新注释。为批注键入文本，单击批注外侧时会自动保存文本。

#figure(
  image("./img/2023-11-10 11.22.png")
)

=== editing annotations

要编辑已创建注释的文本，只需单击文本字段即可。
编辑时，注释中的时间戳会更新。
您不能编辑其他用户创建的注释，但可以删除它们。

您可以更改已创建注释的上下文。
单击注释右上角的行或实体，选择新上下文。

#figure(
  image("./img/2023-11-10 11.23.png")
)

=== tagging annotations

注释可让你添加标签，为创建待办事项列表、排定工作优先级和分配任务提供了一种简便的方法。
要添加标签，只需键入 `#` 和关键字（就像在社交媒体应用中一样）。
例如，你可以使用 `#Project7` 或 `#Refactor`。

要键入一个字面上的 `#` 号而不使其成为标签，请键入 `##`。

#figure(
  image("./img/2023-11-10 11.24.png")
)

=== attaching files

要在注释中附加文件，请单击已创建注释中的回形针图标，然后浏览要附加的文件。
您可以为同一个批注附加多个文件。。

#figure(
  image("./img/2023-11-10 11.24.59.png")
)

=== deleting annotations

要删除注释，请在注释查看器中选择该注释并单击(➖)图标。

NOTE: 注意不要选择注释并按下 Delete 键，
因为这会删除源编辑器中高亮显示的实体，而不是注释。

=== managing orphan(孤儿) annotations

如果删除了附加注释的代码，注释仍是项目的一部分，但它是一个 "孤儿"，没有任何可附加的内容。您可以找到此类注释并将其附加到其他文件或实体：

1.

保存源文件，然后选择项目 > 分析更改的文件。

2.

选择注释 > 管理孤儿。

3.

在 "管理孤儿 "对话框中，展开孤儿注释列表并选择一个孤儿。
您可以放大对话框以阅读更多注释文本。

4.

使用右侧的实体过滤器查找并选择一个实体。

5.

单击将孤儿附加到实体。

6.

可以继续将其他孤儿注释附加到实体。

7.

可以单击 "删除孤儿 "将注释从项目中完全删除。

#figure(
  image("./img/2023-11-10 11.28.png")
)

NOTE: 架构节点也可以成为孤儿。此对话框同样用于管理无主架构节点。

== printing source views

菜单选项File > Print会打开操作系统的标准打印对话框，以便打印当前查看的源文件。

默认情况下，文件将以选择File > Print菜单选项时屏幕上显示的字体和颜色打印。
您可以在选项对话框中自定义代码打印。
要打开此对话框，请选择Tools > Options.
展开editor category，然后选择advanced category。
控制代码打印方式的选项位于打印区域。

#figure(
  image("./img/2023-11-10 11.31.png")
)

要更改打印输出而不更改联机显示，请从菜单中选择File > Page Setup。
此对话框提供类似于以下的打印选项；根据操作系统的不同，选项可能会有所不同：

#figure(
  image("./img/2023-11-10 11.31.png")
)

= architecting(构建, 架构) your codebase(代码库)

Understand 现在为创建和使用架构提供了一个经过全面修订和扩展的界面，
架构是组织和分析代码的虚拟层次结构。我们的用户创建架构有多种用途，包括:

#figure(
  image("./img/2023-11-10 11.37.png")
)

- 基于所有者的架构，显示代码在主要所有者之间的划分。
- 基于metrics的架构，例如按代码复杂度、文件或函数大小分类的架构。
- 基于日期的架构。例如，大型重构项目可以用它来查询哪些文件已经更新，哪些还需要工作。
- 基于功能单元的架构，用于查看不同单元之间的依赖关系。例如，核心代码对外部库有哪些依赖？

#figure(
  image("./img/2023-11-10 11.38.png")
)

体系结构作为项目的一部分保存，因此可以与处理同一项目的其他人协作使用。

架构无需引用项目中的每个源实体；
也就是说，架构可以定义项目实体的子集。
此外，架构还可以多次引用某个实体。(从技术上讲，架构的扁平化扩展不需要保持集合属性）。

你可以连续组合架构，为你的实体创建新颖的过滤器。
从技术角度看，集合代数用于组合和转换架构层次。
过滤器的结果是一个实体列表。
这个结果列表可以被视为一个平面列表，也可以被视为另一个架构。
过滤器定义可以保存为动态架构。
动态筛选器架构会随着项目内容的变化而更新，并可用于日后重组筛选器。

== about architectures

understand的architectures是在源代码主体上分层的抽象层次结构。
架构创建了源代码单元（实体）的层次结构。
通过架构，您可以命名和组织软件项目的各个部分，或分层查看软件的方式。

Understand 提供了内置架构，
可按最后修改日期、目录结构和语言（适用于多语言项目）组织源代码文件。
您可以使用这些提供的架构和/或创建自己的架构。

例如，基于员工的架构可以包含为特定项目工作的每个工程师的节点。
这些节点将包含属于该工程师或由其修改的源代码文件列表。
你可以通过拖动架构中的文件夹、文件或实体来重新分配职责。
通过项目浏览器中的 "隐藏 "选项，
可以查看是否已将项目的所有部分分配给架构中的某个节点。
节点之间的依赖关系和互动关系可以用图表表示，也可以用架构列出。

#figure(
  image("./img/2023-11-10 22.21.png")
)

架构可以组织 Understand 分析的任何实体类型。
它们并不局限于组织文件。
例如，此处显示的 "可能的安全违规 "架构包含各种实体类型，以检查可能存在的安全问题。

#figure(
  image("./img/2023-11-10 22.26.png")
)

体系结构作为项目的一部分保存，因此可以与处理同一项目的其他人协作使用。

架构不需要引用项目中的每个源实体；
也就是说，架构可以定义项目实体的子集。
此外，架构还可以多次引用某个实体。(从技术上讲，架构的扁平化扩展不需要保持集合属性）。

你可以连续组合架构，为你的实体创建新颖的过滤器。
从技术角度看，集合代数用于组合和转换架构层次。
过滤器的结果是一个实体列表。
这个结果列表可以被视为一个平面列表，也可以被视为另一个架构。
过滤器定义可以保存为动态架构。
动态筛选器架构会随着项目内容的变化而更新，并可用于日后重组筛选器。


== browsing architectures

要打开架构浏览器，请从主菜单栏中选择架构 > 浏览架构。

#figure(
  image("./img/2023-11-10 22.34.png")
)

你会看到一个可展开的列表，其中列出了当前为你的项目定义的架构。

该架构区域与实体过滤器或项目浏览器区域类似。
单击某个项目时，信息浏览器中会自动显示该项目的相关信息
（只要在信息浏览器中勾选了 "同步 "复选框）。

要探索架构，可单击 > 箭头展开层次结构。
层次结构中会显示文件、函数和变量等实体。
在节点内，子节点按字母顺序排序。

通过单击汉堡菜单图标并切换 "显示隐式映射子实体 "选项，
你可以选择是否列出每个文件中的实体。

您可以使用架构浏览器工具栏中的搜索图标打开 "在文件中查找 "对话框，
在架构内进行搜索。

=== enabling built-in architectures

Understand 提供了一些预定义的 "自动架构"。
默认情况下，架构浏览器中只显示目录结构架构。
您可以通过单击汉堡菜单图标并选择一个架构来启用其他内置架构：

#figure(
  image("./img/2023-11-10 22.35.png")
)

- 目录结构： 以正常文件层次结构列出项目文件，显示目录及其子目录。
- 日历： 根据最后更改日期列出项目中的文件。显示的日期层次从 "本年"、"本季度"、"本月"、"本周 "到 "昨天 "和 "今天"。
- 语言： 首先按源代码语言列出文件，然后按文件在目录结构中的位置列出。(只有当项目包含多种语言时，才会出现这种结构）。
- Visual Studio 项目： 只有当项目配置为包含 Visual Studio 项目时，才会提供此架构。(必须重新分析现有项目才能创建此架构）。


自动架构只有在分析项目时才会更新。
因此，如果您的源代码正在积极修改，
而您最近没有对其进行分析，
那么架构--尤其是日历架构--可能已经过时。

=== context menus for architectures

架构节点（如文件系统目录或 "本季度"）的上下文菜单包含一些其他上下文菜单中没有的额外项目：

- Graphical Views > Graph Architecture： 从这一点向下创建架构层次结构图形。系统会询问您是要在图形中包含实体，还是只包含架构节点。
- Graphical Views > Internal Dependencies： 显示架构节点之间的依赖关系。
- Add to Architecture： 将选定节点、文件或实体的内容添加到另一个架构节点。您无法编辑 Understand 提供的自动架构。
- Remove from Architecture： 从您选择的体系结构或节点中删除所选节点或文件。您不能从 Understand 提供的自动架构中删除文件。
- Browse Metrics： 显示所选节点内实体的度量（但不包括层次结构中较低子节点内的实体。
- rename： 如果架构或节点是您创建的，您可以对其进行重命名。您不能重新命名 Understand 提供的自动架构。
- duplicate：打开 "复制体系结构 "窗口，您可以键入所选体系结构或体系结构节点副本的名称。
- delete：删除选定的体系结构节点。

一如既往，您可以右键单击架构浏览器中的任何项目，以获取可查看的有关该项目信息的列表。

#figure(
  image("./img/2023-11-10 22.40.50.png")
)

== creating and editing custom architectures

在 "architectures browser" 中创建自定义架构非常简单（在以前的版本中则比较复杂）。
(对自定义架构所做的更改会自动保存。
您还可以使用架构设计器直观地编辑自定义架构

=== creating architecture nodes

使用架构浏览器中的工具栏图标创建和修改自定义架构如下：

- 添加架构或节点
- 删除架构节点, 仅限自定义架构
- 标记实体
- 编辑架构, 重新命名选定的架构或节点。仅限自定义架构
- 复制架构, 重复架构

您不能修改内置体系结构（目录结构、日历和语言），
因此在这些体系结构中选择节点时，
添加、删除和编辑图标将显示为灰色。

要创建新架构，请在架构浏览器中取消选择任何节点或文件，
然后单击添加工具栏图标。为添加的架构键入一个名称。

要在体系结构中创建新节点，
请选择父节点并单击添加工具栏图标。为新节点键入一个名称。

创建自定义架构的另一种方法是选择现有架构或节点，
然后单击复制工具栏图标。
在对话框中为复制的架构键入不同的名称。
复制的架构或节点将在同一级别创建。
您也可以将内置架构的节点拖到自定义架构中创建副本。
节点的所有子节点都会与节点一起被复制。

=== editing architecture nodes

您无法编辑 Understand 提供的内置架构。
不过，您可以通过移动、重命名和删除节点，
以及向节点添加文件和实体来编辑自定义架构。

移动节点： 您可以根据需要在自定义架构内拖动自定义架构或自定义架构的节点。
节点的任何子节点都会随节点一起移动。
如果将内置架构或内置架构的节点拖到自定义架构中，
节点及其子节点将被复制而不是移动。这是因为内置架构不能修改。

重新命名节点：要重命名自定义架构或自定义架构节点，
请右键单击并从上下文菜单中选择重命名。在架构浏览器列表中键入新名称。

删除节点：要删除自定义架构或自定义架构节点，
请右键单击并从上下文菜单中选择删除。

=== adding files and entities to nodes

使用以下任一方法将您在 Understand 中任意位置选择的文件和实体添加到自定义架构中：

- 单击 "架构浏览器" 中的 "标记实体 "工具栏图标。
- 选择 Architectures > Add `<entity name>` to Architecture 菜单命令。
- 右键单击并从上下文菜单中选择添加到架构。
- 将文件或实体从 Understand 中的任意位置拖放到架构浏览器中。

这些方法（拖放除外）要求您选择一个自定义架构或节点来包含所选文件或实体。
您可以将架构名称键入为由斜线"/"字符分隔的路径。例如，"Owner/Chris"。

要从体系结构中删除文件或实体，
请右键单击文件或实体并选择从体系结构中删除。
如果文件或实体在自定义架构中被多处引用，
系统会询问你要从哪个架构路径中删除。

=== complete coverage(覆盖) for architectures

内置架构提供完整的覆盖范围，可按最后修改日期、目录结构和语言组织项目中的文件。
自定义架构不需要包含项目中的所有文件。
通常情况下，你只需要在架构中包含项目的部分内容。
如果确实想确保自定义架构包含项目中的所有文件，请按照以下步骤使用 "按架构隐藏 "功能：

1.

打开 "项目浏览器 "和 "架构浏览器"。

2.

解除 "项目浏览器 "的锁定，将它移到 "架构浏览器 "旁边，这样就可以同时看到这两个区域。两个区域。

3.

在 "项目浏览器 "中，单击汉堡菜单图标，选择 "隐藏 "和 "自定义架构"。
自定义架构的名称。这将隐藏已在架构中的任何文件或目录。

4.

将文件和目录从 "项目浏览器 "拖到架构中需要的位置。
根据需要单击添加工具栏图标创建新节点。

5.

当项目浏览器为空时，项目中的所有文件都会在自定义架构中被引用。

6.

在 "项目浏览器 "中，单击汉堡菜单图标并选择 "隐藏 > 无"，
即可再次显示所有文件。无，重新显示所有文件

=== managing orphan(孤儿) architecture nodes

如果父节点被删除，架构节点就会成为 "孤儿"。
要删除或附加孤儿节点，请从菜单中选择架构 > 管理孤儿。

=== using the architecture designer

您还可以使用架构设计器来编辑自定义架构，
方法是在图形视图或文本视图中创建一个大纲并将实体拖到节点上。
在创建架构的过程中，架构设计者可以更方便地将架构可视化。
体系结构设计器有助于采用自上而下的方法创建体系结构，
而体系结构浏览器则需要采用更多自下而上的方法。

要打开架构设计器，
请从菜单中选择 Architectures > Design Architectures > architecture_name。
或者，在架构浏览器中，右键单击自定义架构（非内置架构），然后选择在设计器中编辑架构。

在架构设计器中所做的更改会立即保存。
设计器中有撤销和重做图标，
但关闭设计器后就无法撤销在设计器中所做的更改。

#figure(
  image("./img/2023-11-10 23.05.png")
)

架构设计器包含以下窗格和控件：

- 架构名称：如果要修改架构名称，请单击架构名称旁边的铅笔图标。
- 大纲窗格： 通过在此窗格中勾画架构来建立架构的组织结构。
- 使用空格或制表符缩进，以便在架构中嵌套层级。你的大纲应包括组织架构的节点，但不包括将在架构中使用的实体。组织的实体。大纲将成为图形视图和文本视图选项卡中架构的节点。单击信息图标查看功能分解大纲示例。
- 图形视图选项卡： 通过将实体拖动到节点，使用此图表编辑架构。您可以在图表中拖动实体，也可以从右侧的目录结构窗格中拖动实体。双击可展开或折叠包含实体的节点（显示为三维方框而非矩形）。使用滚轮放大或缩小。
- 文本视图选项卡： 根据需要拖动实体和节点，使用此列表编辑架构。您可以在此视图中拖动实体，也可以从右侧的目录结构窗格中拖动实体。单击箭头或右键单击并选择 "展开架构 "或 "折叠架构"，即可展开或折叠节点。复制节点： 选择一个节点，右键单击并选择 "复制建筑节点粘贴"，选择复制节点的位置，右键单击并选择 "粘贴建筑节点上一个副本"。
- 目录结构窗格： 内置的目录结构架构显示在此窗格中，您可以根据需要展开它，并将实体拖动到图形视图或文本视图选项卡中。您可以使用此窗格下方的 "搜索 "字段按名称搜索实体。
- 源视图： 声明所选实体的源代码会在此框中显示并突出显示。

使用架构设计器创建或编辑架构的一般步骤如下：

1.

从菜单中选择 Architectures > Design Architectures > New Architecture ，创建新的自定义架构。也可以使用此菜单命令打开现有的自定义架构。

2.

单击铅笔图标并键入新架构的名称。按 Enter 保存名称。

3.

在左侧面板中，键入架构大纲。包括用于组织架构的组，但不包括实体。使用空格或制表符嵌套层次。例如，如果要创建一个显示代码库各部分职责的架构，大纲可以包括工程组或工程师列表。如果您要创建一个架构来组织在不同版本中要修改的代码，那么您的大纲可以包括一个计划发布版本的列表。

请注意，在向大纲添加内容时，大纲的结构会显示在图形视图选项卡中。

4.

将右侧 "目录结构 "窗格中的目录或文件拖到 "图形视图 "选项卡中的正确节点上。

5.

如果希望将所有代码分配到结构中的某个节点，请切换左侧窗格上方的 "筛选器 "图标。已经分配给节点的目录和文件将被隐藏。

6.

完成架构编辑后，单击 "关闭"。

== sharing architectures

您可以通过将架构导出到 XML 文件并共享该文件，与其他开发人员共享架构。

要导出架构，请打开架构浏览器。
选择要导出的架构。
从汉堡菜单中选择导出所选架构选项。

要导入架构，请打开架构浏览器。
从汉堡菜单中选择导入架构选项。

== viewing architecture graphs

您可以生成显示架构层次结构的图形。

要查看图形，请按照以下步骤操作：

1.

选择要绘制图表的最高级架构节点。您可以绘制整个层次结构，也可以只绘制子层次结构。

2.

右键单击节点，从上下文菜单中选择图形视图。有多种图形类别可供选择

依赖关系和图形架构类别是特定于架构的，将在后面的章节中介绍。
对于某些架构结构和节点，可能会有其他图形类别。
例如，对于具有为函数创建的节点的体系结构，如果函数共享全局变量，
则可使用 "函数中的共享对象"（Shared Objects in Functions）图表。

选择architecture节点后，从菜单中选择Graphs > Graphs for `<node>`，可获得相同的图形视图列表。

架构图形的工具栏与其他类型的图形视图相同。

结构图可能很大。请记住，您可以使用 Ctrl+F 在图形中搜索。

您可以将这些图形保存为 PNG、JPEG、SVG、Visio XML 和 DOT 文件。

您还可以使用 "依赖关系浏览器 "查看架构中的依赖关系。

=== dependency graphs

要打开显示整个架构内部依赖关系的图表，
请从Graphs > Dependency Graphs菜单中选择一个架构。
例如，如果你有一个按所有者组织源代码的自定义架构，
图表可能如下所示。蓝线表示单向依赖关系，红线表示相互依赖关系。
数字显示了每种关系的依赖数量。你可以右键单击数字，查看依赖关系列表。

#figure(
  image("./img/2023-11-10 23.17.png")
)

要查看架构节点与同一架构中其他节点之间的依赖关系图，
请右键单击架构浏览器中的节点，
然后选择Graphical Views > Dependencies.。
默认情况下，显示的是依赖关系图的 Butterfly 变体(Butterfly variant of the Dependencies graph)，
其中包括依赖该节点的节点和该节点依赖的节点。
在本例中，Jordan 管理的代码依赖 Chris 和 Sam 管理的代码，但不依赖 Alex。

#figure(
  image("./img/2023-11-10 23.18.png")
)

使用变量下拉列表可更改图表，
使其仅显示所选节点的内部依赖关系、
"依赖于此节点 "的节点或 "依赖于此节点 "的节点。

您可以根据需要扩展架构节点，
以查看不同架构节点内特定源文件之间的依赖关系。

NOTE:

依赖关系图也适用于类和包，
通常作为a variant of the Butterfly graph category。
在变体下拉列表中选择依赖关系

=== architecture structure views

Graph Architecture与Architecture Dependency graphs不同。
它显示的是架构的结构，
而不是架构中实体之间的依赖关系。
打开 "图形架构 "视图的方法与打开其他图形视图的方法相同

#figure(
  image("./img/2023-11-10 23.19.png")
)

== checking dependencies

您可能希望验证某些架构节点是否依赖于其他节点或进行循环引用。
要配置此类检查，请按照以下步骤进行：

1.

从菜单中选择Checks > Configure Dependency Checks。

2.

从对话框顶部的列表中选择体系结构中的节点。
(您可以返回此步骤在配置中添加多个检查，从而对多个节点执行检查）。

#figure(
  image("./img/2023-11-10 23.24.png")
)

3.

选中要执行的检查旁边的复选框，
并为这些检查选择相应的架构节点。
例如，您可以指定 "src/cli "节点不能依赖于 "src/plugins "节点。

#figure(
  image("./img/2023-11-10 23.25.png")
)

4.

添加依赖性检查后，该检查将列在配置检查列表中。
您添加的检查可能会导致多个Configured Check被列出。
例如，指定 "src/cli "节点不能依赖于 "src/plugins" 节点会导致添加两个检查，
以确保 "src/cli "不依赖于 "src/plugins"，以及 "src/plugins "不被 "src/cli "依赖。

#figure(
  image("./img/2023-11-10 23.26.png")
)

5.

您可以双击列表中已配置的检查，查看为该架构节点配置的检查。

6.

要配置更多检查，请在对话框顶部选择另一个架构节点、
并按照相同步骤为该节点添加校验。

7.

完成添加校验后，单击Save & Run。
配置检查后，您可以从菜单中选择Checks > Run Dependency Checks来重新运行检查。

运行依赖关系检查时，任何违规都会显示如下：

- 依赖关系违规区域列出了发现的违规。任何例外情况都包含在描述中。

#figure(
  image("./img/2023-11-10 23.27.png")
)

- 打开一个图表，显示violations found在 "Dependency Violations" 区域所选检查的关系。您可以展开节点和实体，查看违规位置。在图表中选择线条会在依赖关系浏览器中显示特定的引用。图中高亮显示的行是我们建议删除以打破该依赖关系的引用。
- 打开 "依赖关系浏览器 "后，会显示违反在 "违反依赖关系 "区域所选复选的关系列表。

通过 "依赖关系违规 "区域工具栏上的 "筛选器 "图标，
您可以限制违规列表，
使其只显示未提交变更中的违规、
特定架构中的违规或基于文件变更时间或其在架构中位置的自定义筛选器中的违规

配置(🔧)图标重新打开Configure Dependency Checks对话框。

通过汉堡菜单，您可以选择如何展开和排序违规列表。
您可以取消选中Show Graph View或Show Dependency Browser选项，
以防止在运行依赖性检查时打开这些区域。
选择导出 csv 可将违规列表发送到逗号分隔值文件。

== viewing architecture metrics(指标?)

您可以在Information Browser中查看有关架构、架构节点或文件的basic metrics，
也可以在metrics browser中查看和导出详细指标。
度量信息可以导出为逗号分隔的列表，用于电子表格或基于 HTML 的报告。


= using metrics

本章介绍如何创建和查看指标以及可用的type of metrics。

== about metrics

Understand 提供了多种收集度量信息的方法：

- 项目概览： 选择Project > Overview，查看整个项目的指标图表，包括最复杂和最大的函数、类和文件。
- 指标浏览器： 您可以从菜单中选择Metrics > Browse Metrics来查看浏览器，该浏览器可让您选择任何架构节点、文件或实体，以查看该项目的所有可用度量。
- 度量定义： Understand 提供了大量metrics。要查看完整的最新指标列表，请单击Metrics Browser工具栏中的Show Metrics Definitions信息图标。您可以过滤和搜索该列表。单击某个度量指标，了解其计算方法。
- 信息浏览器： The Information Browser tree中有一个metrics节点。您可以展开该分支来显示当前实体的一些度量指标。
- 导出为 HTML： 您可以使用Metrics Browser导出所有架构节点和文件的完整度量衡列表。
- 导出为 CSV： 可以从菜单中选择Metrics > Export Metrics，以逗号分隔格式创建包含所有项目度量的文件。
- Python 和 Perl API： 获取现有度量和计算新度量的更高级方法是使用 Python 和 Perl API。这些 API 提供了对 Understand 项目的完全访问。选择Help > Python API Documentation或Help > Perl API Documentation获取更多信息。

== project overview

从菜单中选择Project > Overview，
可查看整个项目的指标图表，
包括最复杂和最大的函数、类（支持类的语言）和文件。
还提供按行类型和目录结构划分的项目图表。

#figure(
  image("./img/2023-11-10 23.37.png")
)

如果将光标悬停在彩色区域上，则会显示文件、函数和类的名称。

如果在打开Project Overview时选择Project > Analyze All Files，
则会在 "项目概览 "顶部添加有关解析时发现的准确性和错误的统计信息。

#figure(
  image("./img/2023-11-10 23.36.png")
)

如果打开包含分析错误的项目，
选择Project > Overview，然后选择Project > Analyze All Files，
还可以查看按类型和语言分组的分析错误和警告图表。

== metrics browser

Metrics Browser提供整个项目、任何实体和任何架构节点的大量度量衡列表。

要打开Metrics Browser，请从菜单中选择Metrics > Browse Metrics。
默认情况下，显示的是整个项目的度量指标。
选择Directory Structure架构的顶层节点会使度量反映整个项目。

您可以浏览项目中的架构和实体，并选择任何架构节点、文件或实体。
右侧的列表显示了所选项目的代码大小和复杂度指标。

#figure(
  image("./img/2023-11-10 23.39.png")
)

双击文件或实体可打开该项目的源代码编辑器。

右键单击 Understand 中几乎任何地方的项目名称并选择Browse Metrics，
即可打开Browse Metrics，显示项目中任何架构节点、文件或实体的度量。

单击Browse Metrics工具栏中的Show Metrics Definitions图标，学习可用的度量衡。

单击Metrics Browser工具栏中的Export Metrics图标，将度量指标保存到文件中。
要将指标复制到剪贴板，请按 Ctrl+C 或右键单击并选择Copy Selected。
可以按住 Ctrl 或 Shift 键来选择多个指标。
单击全部复制可复制所选节点、文件或实体的完整列表。

如果选中Metrics Browser工具栏中的 "同步 "复选框，
则在其他视图中选择实体、文件或架构节点时，显示的metrics会随时更改。

您可以从汉堡包菜单(三条纹)中选择选项来调整显示：

- Show Detailed Architecture Metrics：扩展指标列表，除与计数相关的指标外，还包括复杂性和面向对象指标。禁用时，只显示与计数相关的指标。对于大型项目，显示详细指标可能会影响在Metrics Browser中选择新节点时的性能。
- Show Summary：显示项目名称、所选节点或实体的类型以及所选节点内各种类型文件的数量。
- Show API Name： 显示使用 CountLine 等名称的度量列表。
- Show Friendly Name：使用简短描述显示度量。根据名称或描述的不同，列表的排序方式也不同。

== exporting metrics

要了解度量标准的计算方法，
请单击Metrics Browser工具栏中的Show Metrics Definitions信息图标。
这将打开Metrics Definitions窗口。
该窗口显示每个metrics的 API 名称和"friendly"名称，并提供简短描述。

单击任意一行可打开较长的描述，
其中包括显示度量计算方法的图表和该度量适用的语言列表。
再次单击可关闭详细描述。

您可以通过选择度量类别（Complexity, Count, or Object-oriented）、语言和/或搜索词来搜索该列表。

#figure(
  image("./img/2023-11-10 23.43.png")
)

== metrics in the information browser(信息浏览器汇总的指标)

Export Metrics对话框可让您完全控制将指标保存到逗号分隔的文件。
要使用此对话框，请单击(📃)Export Metrics图标并选择Export to CSV.。
或从菜单中选择Metrics > Export Metrics。

在Export Metrics对话框中，您可以选择要导出的度量、输出中度量的顺序、输出文件位置以及下文所述的其他各种选项。
输出包括每个类函数、类和结构实体的一行。它不包括architecture nodes的行。

- Available Metrics：选中要包含在输出中的度量旁边的方框。选中 "SELECT ALL（全部选择）"方框可选择所有度量。取消选中 "SELECT ALL（全部选中）"框可取消选中所有指标。如果光标停留在某个指标上，就会看到该指标的简短描述。
- Metrics to Export：单击单箭头在列表中上下移动所选指标。单击双箭头可将所选指标移至列表顶部或底部。
- Save output to：指定指标输出文件的位置和名称。Understand 会将指标输出发送到 `*.csv`（逗号分隔值）文件。
- Show File Entity Name as：指定是以短名（仅文件名）、全名（包括绝对路径）还是相对名称（相对目录路径）显示文件。
- Show Declared in File：如果希望在输出中包含声明每个实体的文件，请选中此复选框。您可以指定是用短名、全名还是相对名称显示这些文件。
- Write Column Titles： 如果希望在 CSV 文件中显示列标题，请选中此复选框。
- Show Function Parameter Types：如果希望列出每个函数参数的类型，请选中此复选框。
- Include Entity Unique Name to track changes over time( 包含实体唯一名称以跟踪随时间发生的变化)：选中此复选框可添加 "实体唯一名称 "列，其中包含每个实体的唯一路径规范。这样就可以区分具有相同名称的多个实体。

除了使用Export Metrics对话框外，Understand 还提供了以下其他方法将度量值保存到文件：

- Copy to a text file：要将度量值复制到剪贴板，请按 Ctrl+C 或右键单击并选择Copy Selected。可以按住 Ctrl 或 Shift 键来选择多个指标。单击copy all可复制所选节点、文件或实体的完整列表。将指标粘贴到文件编辑器中。
- Export selected architecture node to CSV file：选择一个架构节点。单击Export Metrics(📃)图标旁边的向下箭头，然后选择Export Selected Architectures to CSV。选择 CSV 文件的位置和文件名。系统会询问您是否要打开报告，这是一个 CSV 文件，其中包含所选每个架构节点的指标行。所有指标都会导出。
- Export project summary metrics to HTML: 单击 "导出指标" 图标旁边的向下箭头，然后选择 Export Selected Architectures to HTML。选择包含文件的文件夹。系统会询问您是否要打开报告，报告为single page，包含整个项目的指标。只导出计数指标。
- Export detailed metrics to HTML： 单击 "导出指标 "图标旁边的向下箭头，选择 "导出为 HTML"。选择包含文件的文件夹。系统会询问您是否要打开报告，这是一个 HTML 页面树，您可以从中选择任何架构节点或文件，查看该节点或文件的指标。只导出计数指标。

当提示您选择一个文件夹来包含以 HTML 格式导出的度量值时，
这些文件实际上会存储在您选择的文件夹下面一个名为`<Project_name>_Metrics`的文件夹中。
如果该目录已经存在，系统会询问您是否要覆盖这些文件。
如果回答 "否"，则会在旧目录名后附加一个数字，将其作为备份保存。
生成报告后，系统会询问您是否要查看报告。单击 "是 "打开顶层页面 index.html。

== metrics treemap(指标树)

您可以在信息浏览器中查看任何实体或架构节点的基本指标。

在Information Browser中，您可以展开metrics节点，
查看一些简单的度量标准，
如代码行数、注释与代码的比率以及所有嵌套函数或方法的平均循环复杂度。

单击metrics节点旁边的Show Metrics Browser(股票数据的图标)图标，打开Metrics Browser。

默认情况下，无论何时查看新实体，
Information Browser中的metrics节点都会折叠。
如果希望节点保持展开状态，
可以单击metrics右侧的小箭头，
然后选择Allow Pre-expansion。
如果启用该选项，
在Information Browser中查看新实体的速度可能会变慢。

#figure(
  image("./img/2023-11-10 23.59.png")
)

= using graphical views

本章介绍 Understand 中的图形视图及其选项。

== opening graphs

Understand 提供多种类型的图表，用于直观地探索和解释您的项目。
可用的图表类别会根据您选择的实体或架构节点类型而改变。
您几乎可以在 Understand 的任何地方选择实体或节点。
所选实体或节点的图表类别列表在以下位置提供：

- 顶部菜单栏中的Graphs > Graphs for entityName列表
- 右键单击实体时的graphical views子菜单
- 主工具栏中的显示图形视图菜单图标

以下是功能可用的典型图形类别。
例如，butterfly图形类别提供了同时显示所选函数调用的函数和调用所选函数的函数的图形。

#figure(
  image("./img/2023-11-11 09.00.png")
)

右键单击实体并选择图形视图时，也会列出相同的图形类别：

#figure(
  image("./img/2023-11-11 09.01.png")
)

Understand 中有许多可用的图形类型。
显示调用层次和类型结构的图形适用于所有支持调用和类型的语言。
例如，下面是名为 "chimaera "的 C 函数的两个图形：

#figure(
  image("./img/2023-11-11 09.02.05.png")
)

有些图形适用于某些编程语言。
例如，支持类继承的语言（如 C++）有派生类和基类图。
同样，根据源代码语言使用的关键字，
也有一些图表可以显示 "include"、"with"、"use "或类似语句的层次结构。

在 Understand 中打开图表的其他方法如下：

从菜单中选择Project > Overview，即可打开project overview图表。
这些图表显示项目级指标，如相对函数大小和复杂性。

#figure(
  image("./img/2023-11-11 09.02.png")
)

从菜单中选择Metrics > Metrics Treemap可打开Metrics treemaps。
这些是可以使用任意两个指标生成的特殊图表。

#figure(
  image("./img/2023-11-11 09.03.png")
)

从菜单栏中选择 Graphs > UML Class Diagram > nodeName，
可打开架构节点的 UML 类图。
这些图表遵循统一建模语言 (UML) 结构图格式。

从菜单中选择 "图表"（Graphs）>"依赖关系图"（Dependency Graphs）>"架构名称"（architectureName），
可以打开architecture node的Dependency graphs。这些图表显示架构中节点和实体之间的关系。

插件图可以使用 Perl API 或 Python API 创建。
要打开已安装的插件图形，请从图形列表中选择。

== graph variants

现在，类似的图形被组合在一起，使界面更简洁、更友好。
例如，当您打开一个函数的调用图时，可能会看到如下所示的变体图列表。
您可以在图形变体之间轻松切换：

#figure(
  image("./img/2023-11-11 09.08.png")
)

选择一个variant来查看该图表。
可用的variant取决于您选择的实体和图表类别，但这些是一些常见的变体：

- simplified：这是默认变量。(对于函数，它显示调用、调用方式或蝴蝶调用树的简单视图。对于对象或类型，则显示其成员的简单视图。您可以右键单击图形来控制一系列显示选项。
- classic：这是传统的图形视图。它与简化视图类似，但右键选项不同。
- With Global Objects (Classic)：与传统图形视图类似，但包含全局对象。
- Relationship：该变量显示任意两个实体之间的关系。您将被要求单击另一个实体，以查找其与所选实体的关系。您可以在 Understand 界面的任何地方点击第二个实体。您选择的实体名称会出现在 "选择第二个实体 "对话框中。此示例显示了从 pipe() 函数到 crc32() 的调用关系。

#figure(
  image("./img/2023-11-11 09.14.png")
)

- dependencies：该变量包含绘制为三维方框（如图）的节点，双击这些方框可展开显示其中包含的节点。您可以不断扩展节点，直到达到实体级别。

#figure(
  image("./img/2023-11-11 09.15.png")
)

- cluster：该变量提供按类或文件聚类的关系视图。双击图形中的方框可展开或折叠这些图形。可以从函数、类、文件或架构级别访问簇图。

#figure(
  image("./img/2023-11-11 09.16.png")
)

- compare：该变量显示对项目的更改如何影响调用结构、数据结构、控制流或 UML 序列。要查看这些图表，需要指向同一项目的上一版本。

#figure(
  image("./img/2023-11-11 09.17.png")
)

- UML Sequence Diagram：该变量显示按时间顺序排列的实体间的交互。此图适用于调用成员方法的函数和方法。在支持网站上搜索 "UML"，可找到 UML 序列图示例和有关如何显示事件的信息。

#figure(
  image("./img/2023-11-11 09.18.png")
)

- custom：如果安装了插件图，则可通过选择自定义变量来使用。

您可以在 "工具">"选项 "对话框的 "图形 "类别中自定义群集图形中使用的 显示颜色、形状填充、形状和箭头。


== controlling graphical views

以下各节将介绍使用graphical views的控件。

=== graph toolbar

图形工具栏可能包含以下图标。
某些图形类型不提供所有这些图标。
使用tools > options对话框的图形类别可控制显示哪些工具栏图标

#figure(
  image("./img/2023-11-11 09.19.png")
)

- variant list：选择该图表类别的变体进行查看
- Copy Image to Clipboard：允许您将图形作为图像粘贴到其他应用程序中。
- Print Graph：打开打印选项对话框以打印图形。将图形保存到文件：可将图形保存为 JPEG、PNG、SVG、Visio 或 DOT 文件
- Save Graph Customization：提示输入当前设置的名称。设置仅适用于特定图形类型和此视图中的根节点。如果您已经为该图形type/root node组合保存了设置，则可以从上下文菜单中选择要更新的设置。否则，请键入当前设置的名称，然后单击保存。
- Load Graph Customization：提示您选择要在当前窗口中打开的已命名图形设置组。列表只显示为该图表type/root node组合保存的设置。要查看已保存设置的完整列表，请选择Graphs > Dependency Graphs > Load Saved Dependency Graph.。
- undo： 撤销上次对图形自定义的更改。
- redo： 重做上次撤销的图形自定义更改。
- restore defaults：将图形恢复为原始设置。
- zoom：可以使用该下拉列表或鼠标滚轮放大或缩小。如果不想让鼠标滚轮控制缩放级别，可以在选项对话框的图表类别中禁用该行为

#figure(
  image("./img/2023-11-11 09.29.png")
)

- Show Mini-Map：切换此图标可查看显示完整图表的小地图。对于大型图形，该地图有助于了解使用滚动条在图形内导航的位置。拖动或单击小地图可移动到图表中的新位置。
- show legend：某些图表类型提供图例。如果该图标显示在工具栏中，单击该图标即可显示图形图例。图例可识别图形中使用的形状和箭头样式。可以拖动图例在图形中重新定位。
- Search Graph：单击图标或按下 Ctrl+F 可在图表底部显示增量搜索栏。您可以像在 "源编辑器 "中一样使用该栏，通过名称或当前图形视图中的其他文本查找实体。当您键入搜索文本时，该字符串的所有实例都会在图形视图中突出显示。

#figure(
  image("./img/2023-11-11 09.30.png")
)

- favorites：选择收藏夹列表的名称可将此图形添加到该列表中。选择添加到新收藏夹可创建新收藏夹列表并为其命名，其中包含指向此图形的链接。

#figure(
  image("./img/2023-11-11 09.31.png")
)

- reuse：此复选框可控制当请求另一个图形视图时，是重复使用图形视图还是打开新标签页。该复选框默认为未选中。在任何时候，最多只能有一个图形视图选中重复使用复选框；选中此复选框后，其他选项卡中的复选框将自动取消选中。
- sync：该复选框控制当在 "项目浏览器"、"实体筛选器 "和其他允许选择实体的区域中选择不同实体时，该图形视图是否会更改。例如，如果在 "声明 "图形窗口中选中 "同步 "复选框，然后在 "实体筛选器 "中选择不同的实体，图形就会显示新选择实体的声明信息。
- release/capture window：切换此图标可在单独窗口中打开图形。这在查看较大图形时非常有用。
- configure graph settings：打开工具 > 选项对话框的图表类别
- progress：如果当前正在更新图形，此图标将显示在配置图标的右侧。
- graph settings： 汉堡包菜单提供的命令与右键单击图形背景上的命令相同

#figure(
  image("./img/2023-11-11 09.34.55.png")
)

#figure(
  image("./img/2023-11-11 09.35.42.png")
)

#figure(
  image("./img/2023-11-11 09.36.17.png")
)

=== graph options

有关Tools > Options对话框中图形类别的信息。
将鼠标悬停在图形上或双击节点时，可以控制图形节点间关系的显示方式。

要控制图形中使用的字体，请在Tools > Options对话框的常规类别中设置Application Font。

=== mouse controls

右键单击图形背景或单击图形的汉堡包菜单，可显示适用于整个图形的控件。

右键单击图形中的实体会显示该实体的完整上下文菜单和控件。
实体子菜单包含在 Understand 中其他地方右键单击实体时看到的命令。
图形子菜单提供控制图形外观的命令。
上下文菜单中的其他命令与图形类型有关。

在某些graph变体中，右键单击边（线或箭头）会显示构成该边的引用列表。
从列表中选择一个项目，即可查看此关系的源代码。
您可以限制该列表的长度

在控制流程图中，右键单击流程图中的任意方框并选择Go To Source，
即可打开执行此操作的行的源代码。
在源代码编辑器中，右键单击函数或方法中的任意一行代码，
然后选择Graphical Views > Control Flow，即可打开选中此操作的控制流程图。

如果在信息浏览器中选中了sync复选框，单击图形中的实体就会在信息浏览器中显示该实体的信息。

按住 Ctrl 键并使用鼠标在要选择的节点上拖动一个矩形，即可选择图形中的一个或多个节点。

如果可能，双击图形中的实体可展开该实体。

=== classic context menu controls

在classic graph variant和某些其他图形类型中，
除了entity submenu和graph子菜单外，还可以为以下操作提供命令：

Expanding hierarchy：在经典图形变量中，单击节点右侧的蓝色圆圈可以展开和收缩树视图。
右键单击节点并选择Open Node, Close Node, or Close Other Nodes。
右键单击视图背景，然后选择Open All Nodes or Close All Nodes，即可expand or contract all nodes at once。
如果在使用Close All Nodes时想要保持打开多个节点，请按住 Ctrl 键选择多个节点。

#figure(
  image("./img/2023-11-11 09.47.41.png")
)

要展开或收缩的节点.
Filtering graph contents：在经典图形变体中，
您可以应用筛选器在某些图形视图中隐藏某些实体。
要创建此类筛选器，请按照以下步骤操作：

1.

右键单击图形视图的背景，然后从上下文菜单中选择Edit Graphic Filters。
(请注意，某些类型的图形无法使用该选项。例如，它适用于调用图形和声明图形）。

2.

在图形过滤器对话框中，选中Enable Project Filters。

3.

单击new。这将打开图形过滤器编辑器对话框。

4.

在Filter Text字段中键入筛选器。例如，使用 `gr*` 来匹配以 gr 开头的实体名称。过滤器区分大小写。

5.

在Filter Criteria(Criteria n. 标准)中，选择筛选是否与长名称、定义文件、实体类型文本或参数文本进行比较。
例如，如果选择长名称，`print*` 的过滤器就不能匹配 `SomeProc::printWide`。相反，您可以键入 `*print*`。

6.

在 "操作 "字段中，选择以下选项之一：

- hide node： 图形中不包含与筛选器匹配的项目。
- hide sub nodes： 显示与筛选器匹配的项目，但这些项目的任何子节点都会从图表中删除。
- fold sub nodes： 与筛选器匹配的项目的任何子节点都会在图表中折叠。节点后会显示一个图标，表示存在子节点。显示符合筛选条件的项目。
- show only： 图表中只包含与筛选器匹配的项目。

7.

单击确定将筛选器添加到项目中。

单击Remove or Remove All可移除已创建的筛选器。

您创建的筛选器适用于支持筛选的所有图形视图。
您可以在graph filters对话框中暂时Disable Graphic Filters，
或者右键单击任何图形视图并从上下文菜单中选择禁用图形筛选器。

也可以右键单击图形中的实体并选择其中一个过滤选项来创建过滤。
通过这些选项，您可以快速筛选出具有该名称、该类型或该文件中的实体。

Path highlighting：在经典图形变体中，
要高亮显示树形视图（如 Callby 视图）中一个或多个实体的路径，
请选择实体并右键单击。
在上下文菜单中选择高亮显示路径。
按住 Ctrl 键可选择多个实体进行路径高亮。

#figure(
  image("./img/2023-11-11 09.53.png")
)

=== customization panel controls

通过依赖关系图和聚类图等图表右侧的面板，可以隐藏、显示和高亮显示图表的部分内容。
图形自定义面板中的命令因图形类型而异。
命令是否处于活动状态取决于图形中选择的内容，以及所选节点是否有子节点和/或边进出。

#figure(
  image("./img/2023-11-11 09.54.png")
)

部分命令如下：

- Highlight Edges Out of Selected Nodes。高亮显示所选节点与其他节点之间的关系（"边"）。内部依赖关系图可以高亮显示此类边缘；其他类型的依赖关系图可以显示或隐藏此类边缘。
- Highlight Edges Into Selected Nodes。使从其他节点到所选节点的关系突出显示。内部依赖关系图只能高亮显示此类边缘；其他类型的依赖关系图可显示或隐藏此类边缘。
- Clear All Highlights.。单击此按钮可关闭所有节点和边的高亮显示。
- Hide Unhighlighted Edges。从图形中删除当前选中的所有节点，并根据需要重组图形。(以后可以通过单击显示隐藏节点来恢复隐藏的节点）。
- Hide Nodes With No Highlighted Edges。如果选中此复选框，所有未突出显示的边都会被隐藏，并根据需要重组图形以省略这些未突出显示的关系。只有在开启了某些高亮边缘的情况下，才能使用此功能。
- Show Hidden Nodes。如果单击此按钮，则会恢复使用hide按钮隐藏的节点。此按钮不会展开任何已收缩以隐藏子节点的节点。如果您隐藏了节点，可以从Hidden Nodes下拉列表中选择实体来重新显示这些节点。
- show edges out。根据情况在所选节点和其他节点之间显示箭头。如果取消显示箭头，图表将重新组织以隐藏这些关系。
- show edges in。根据情况在所选节点和其他节点之间显示箭头。如果取消显示箭头，则将重新组织图形以隐藏这些关系。
- Show Dependency Browser。此按钮将打开最近在图形中选定的节点或关系的Dependency Browser。如果在Dependency Browser中选中 sync复选框，则会显示您在图形中选择的任何关系的详细信息，并且在Dependency Browser中高亮显示由该关系连接的两个节点。
- choose edges shown。您可以从该列表中选择希望在图形中显示的依赖关系类型。可用的依赖关系类型包括 Inits（初始化）、Sets（设置）、Uses（使用）、Calls（调用）和 Modifies（修改）。默认情况下，会显示所有依赖关系类型。
- show children。显示所选节点的所有子节点。这与双击节点展开节点的操作相同。
- show edges between children。在所选子节点和任何其他子节点之间酌情显示箭头。如果取消显示箭头，图表将重新组织以隐藏这些关系。
- aggregate edges out。使来自所选节点的子节点的箭头被绘制为来自该节点的箭头，并且不重复绘制来自多个子节点的具有相同目标的箭头。如果切换为 "关闭"，则会从各个子节点分别绘制箭头。
- aggregate edges in。将指向所选节点子节点的箭头绘制为指向该节点的箭头，并且指向多个子节点的箭头不会重复。如果切换为 "关闭"，则会分别绘制到各个子节点的箭头。

== context menus for graphs

右键单击图形时，有许多子菜单可让您选择如何配置和显示图形。
可用的子菜单取决于图形的类型。
本节将介绍许多子菜单，但不是全部。在此按字母顺序列出。

#figure(
  image("./img/2023-11-11 10.13.png")
)

- 聚合节点（Aggregate Nodes by）菜单控制聚类图形中节点的分组方式。选项包括按功能、按类、按文件和按架构。默认情况下是按文件分组实体。
- 按架构聚合（Aggregate by Architecture）菜单控制节点的分组方式。选项是已定义的架构。默认为关闭。
- 允许调用扩展菜单控制是否可以扩展被调用函数。如果该选项为开，可扩展调用将显示为 3D 方框。默认为关闭。
- 注释菜单控制是否不显示附加到实体的注释（默认为关）、只显示最近的注释（第一）或显示所有注释。
- 架构名称菜单控制架构名称的显示方式。选项包括无、短、相对于项目和长名称。默认为相对名称。
- 背景颜色菜单控制是否使用图例中的颜色填充实体框。默认为关闭。
- 基类菜单控制声明图形是否包含基类（如果适用）。
- 调用深度菜单控制显示多少级调用。该设置范围从 0 到 10。默认为 3 级。
- 被调用深度 "菜单控制显示多少级被调用。该设置范围从 0 到 10。默认为 3 级。
- 被调用菜单控制是否在声明视图中显示调用当前实体的程序单元。
- 聚类（Cluster）菜单控制 UML 图表中是否聚类一组语句，如条件语句的 "if "或 "else "分支。默认为打开。
- 折叠（Collapse）菜单控制在控制流图中，如果语句之间没有决策点，是否将它们合并到一个框中。开尊重隐藏 "设置与 "开 "选项类似，只是隐藏节点保持隐藏。默认值为开。
- 注释菜单控制是否显示与实体相关的任何注释。默认为关闭。
- 常量菜单控制是否在声明视图中显示常量。默认为开。
- 调试菜单控制是否显示控制流图中每个项目的详细信息。详细信息依次为：nodeID、nodeKind、startLine、startCol、endLine、endCol、endNode、commaSeparatedListOfChildren。默认为关闭。
- 默认成员菜单控制声明视图是否显示类的默认成员。
- 定义/声明菜单控制定义和声明关系是否显示为边。它在对象引用和比较对象引用图形中可用。默认为关闭。
- 依赖深度（Depended On By Depth）菜单控制显示依赖于此实体的实体层数。该设置范围为 0 到 10。
- 依赖深度 "菜单控制显示该实体依赖的实体层级数。此设置的范围为 0 到 10。
- 依赖菜单控制 C 文件依赖的文件是否在 C 文件声明视图中绘制。默认为打开。
- 依赖者 "菜单控制文件声明图中是否显示依赖于当前 C 文件的文件。默认为打开。
- 派生类菜单控制声明图是否包含派生类（如果适用）。
- 重复子树菜单控制是否在层次结构视图中显示同一子树的多个出现。选项包括隐藏或显示此类子树。默认情况下显示重复的子树。在某些应用中，隐藏重复子树可以大大简化层次结构视图。如果视图中的节点超过 1000 个，则不会显示重复的子树。
- edges标签 "菜单控制是否为实体间的线条和箭头显示标签。
- 实体名称格式为 "菜单控制显示长实体名称还是短实体名称。默认为短名。
- 如果在 C++ 项目配置中启用了 "保存宏扩展文本 "选项，"扩展宏 "菜单将控制是否在控制流图中扩展宏。
- Extended By（通过扩展）菜单控制声明视图是否显示选定类通过哪些类扩展。
- Extends 菜单控制声明视图是否显示选定类所扩展的类。
- 外部函数菜单控制是否在头文件的声明视图中显示头文件或头文件包含的文件中定义的函数。默认为打开。
- 文件名菜单控制如何在视图中显示文件名。声明视图和层次结构视图均可使用。
  - 无： 视图中不显示文件名。
  - 简名：文件名相关时，方括号中只显示文件名。
  - 全名：文件名相关时，方括号中显示完整的文件路径和文件名。
  - 相对： 文件名相关时，方括号中显示相对于项目的文件路径。
- 筛选器菜单控制是否隐藏隐式操作，如控制流图中的 "endif"。默认为打开。
- 函数指针菜单控制函数指针是否显示为 Call 和 CallBy 树以及 UML 序列图中的调用。
- 全局菜单控制是否在声明视图中显示全局。默认为打开。
- 全局对象（Global Objects）菜单控制是否显示全局对象。
- 实现（Implements）菜单控制声明视图是否显示所选实体实现的实体。
- 通过实现（Implemented By）菜单控制声明视图是否显示所选实体通过其实现的实体。
- 导入（Imports）菜单控制声明视图是否显示当前实体导入的实体。
- 包含（Included By）菜单控制是否在 "头文件声明 "视图中显示包含头文件的文件。默认为打开。
- includes菜单控制是否在文件声明图（C 文件、头文件）中绘制包含文件。默认为打开。
- includes深度菜单控制显示多少级文件包含。默认为 3 级。
- 包含全局对象（Include Global Objects）菜单控制群集调用图中是否包含全局对象。默认为关闭。
- 包含标准库（Include Standard Libraries）菜单控制 UML 图表中是否包含标准库。
- 包含未解决对象（Include Unresolved）菜单控制未解决对象是否包含在图中。默认为关闭。
- 包含虚拟边（Include Virtual Edges）菜单控制是否显示覆盖边（override edges）和被覆盖边（overriddenby edges）。如果要更改虚拟边的颜色，请选择tools > options。在 "图形 "类别中，转到 "群集图形样式 "部分，在 "边 "列表中修改虚拟调用的显示格式。
- 继承菜单控制声明视图是否显示选定实体继承的实体。
- 固有函数（Intrinsic Functions）菜单控制固有函数（如 cos 和 sin）的显示或隐藏。
- 调用菜单控制是否在声明视图中显示当前存储过程或函数调用的存储过程和函数。
- 布局菜单控制图形的排列方式。它仅在层次结构和控制流图形中可用。对于某些图形类型，选项有水平和垂直两种，默认为水平。对于其他图形类型，选项如下：
  - 交叉： 从左到右的视图，允许实体之间的线条交叉，从而最大限度地减少了空间，但也牺牲了一些可读性。
  - 水平非交叉： 从左到右的布局，在某些情况下使用更多空间，但由于没有交叉线，因此可读性更高。
  - 垂直无交叉布局： 从上到下的布局，类似于 "水平无交叉 "布局。
- 图例菜单控制是否显示图形的图例。图例可识别图形中使用的形状和箭头样式。默认为关闭。
- 层次（Level）菜单控制布局层次图或依赖关系图时要遍历的层数。默认值为 "所有层级"。可设置的值为 1 到 10。仅在层次视图中可用。
- 库菜单可让您从 Ada 调用图中排除标准库中的实体。
- 本地菜单控制是否在 "声明 "视图中显示本地项目。默认为打开。
- 成员 "菜单控制是否在 "类型树 "和 "派生类型 "视图中显示成员和运算符。可选择显示 "无"、"组件"、"运算符 "或 "运算符和组件"。
- 已修改实体（Modified Entities）菜单控制比较图中显示的修改类型。默认设置是忽略注释、空格和换行的更改。
- 名称菜单控制是否在视图中使用全名。声明视图和层次结构视图均可使用。全名包括其父编译单元。例如 - Text_Io.Put 是完全指定的名称。- Put 是短名称. 较长的名称和较短的名称会大大改变图片的布局。
- 对象菜单控制是否在声明视图中显示对象。默认为打开。
- 操作符菜单控制是否在 Callby、Declaration、Declaration Tree 和 Invocation 视图中显示操作符实体。
- 覆盖菜单控制是否显示函数覆盖。
- 参数菜单控制是否在分层视图中显示参数。该菜单适用于任何分层图形视图（调用和调用）。默认值为关闭；打开该选项可使分层图片变得更大。
- 被动菜单控制控制流图形中是否显示被动节点。默认为打开。
- 私有成员菜单控制声明视图是否显示实体的私有成员。
- 受保护成员菜单控制声明视图是否显示实体的受保护成员。
- 公共成员菜单控制声明视图是否显示实体的公共成员。
- 随机边缘颜色菜单控制是否使用随机颜色显示边缘。默认情况下，所有边缘都以相同颜色显示。
- 引用（References）菜单控制是否在比较图中显示引用的文件名和编号。默认情况下显示所有引用信息。
- 重命名菜单控制是否在 "声明 "视图中显示重命名的声明。默认情况下显示重命名声明。
- 例程菜单控制是否在声明视图中显示例程（过程、函数等）。是否显示在声明视图中。默认为打开。
- 显示类详细信息菜单控制是否显示每个类的详细信息。
- 显示相关类菜单控制是否显示与该类相关的类。
- 显示独占类菜单控制是否在控制流图中显示与语句相关的注释。默认为关闭。
- 显示边缘标签菜单控制两个实体之间的关系数是否显示为标签。对于双向调用关系，数量是两个方向的关系总数。默认为关闭。
- 显示子节点间的边 默认菜单控制是否为已展开的节点显示子节点间的边。请注意，更改此设置只会影响使用默认设置的节点；您可能需要单击恢复默认设置图标来影响整个图形。架构群集图形的默认设置为打开，而其他类型图形的默认设置为关闭。
- 默认显示节点子节点 "菜单控制是否显示依赖关系图中所有架构节点的所有子节点。默认为关闭。右键单击节点并选择 "显示子节点 "可查看单个节点的子节点。
- 显示实体（Show Entities）菜单控制是否在架构依赖关系图中显示除架构节点以外的实体。默认为打开。
- 显示实体名称菜单控制是否在控制流图开头的开始框中显示实体名称。您可以选择隐藏、显示或带参数显示名称。默认为隐藏名称。
- 显示最后块流菜单控制是否在控制流图中显示代表从 Java 和 `C#` 等语言的 try-catch 块中异常退出的边。默认为打开。
- 显示标签（Show Labels）菜单控制是否在控制流图中显示边（例如，是/否）和起始块的文本。默认为打开。
- 默认显示节点子节点菜单控制在打开群集图形时是否默认打开节点。例如，如果在打开文件的群集调用图时启用了该选项，文件中的所有函数都将默认显示。请注意，更改此设置只会影响下次打开图形时的行为。默认为关闭。
- 显示返回菜单控制 UML 图表是否显示函数返回。默认为开。
- 显示自调用菜单控制 UML 图表是否显示函数自调用。默认为开。
- 显示源代码（Show Source Code）菜单控制是否隐藏源代码、显示源代码或只显示控制流图中的决定。默认为打开。
- 比较图中的显示版本差异控制是否显示添加、删除或两种类型的差异。默认为同时显示。
- 显示未解决实体菜单控制 UML 图表是否显示未解决实体。选项包括隐藏、显示或在单独一列中显示。默认为隐藏。
- 排序（Sort）菜单可让你指定树状视图中的实体名称是否按字母顺序排序。如果关闭该选项（默认值），实体将按照在项目中出现的顺序排序。
- 通过 "间距 "菜单，可以更改方框之间的间距。你可以选择紧凑、小、正常、宽或超宽。
- 通过 Sql 菜单，可以指定是否在图形视图中显示 SQL 实体。该选项默认为打开。
- 静态菜单控制是否在函数、C 文件和头文件声明视图中绘制静态函数。静态函数是使用 "static "关键字声明的函数。它们仅在其声明的文件中可见。如果启用静态函数，则其方框边缘将位于其外层单元（C 文件）外部声明方框的边缘内。默认为开启。
- 样式标签菜单控制是否高亮显示控制流图中源代码的关键字、注释和字符串。将使用 "理解选项 "对话框（第 110 页）的 "编辑器">"样式 "类别中定义的格式。默认为打开。
- 文本菜单设置修剪或更改实体名称的方式，以适应图形布局。声明视图和层次视图都可以使用。可以将名称截断到一定长度或按一定长度包装。
  - 不截断： 使用源代码中定义的名称。这是默认设置。
  - 短截断：名称长度为 10 个字符时截断。
  - 截断中等长度： 在 20 个字符处截断名称。
  - 截断长字符： 在 30 个字符处截断名称。
  - 不换行： 从不将文本换行到下一行。
  - 短换行：在 8 到 10 个字符之间换行。在此范围内的位置取决于是否能找到自然换行符。自然换行符为 . `_` - 和 ：
  - 中号换行： 与 "短包 "类似，但包字范围为 15-20 个字符。
  - 长换行：与短换行类似，但换行范围为 20-30 个字符。
- 类型或文本菜单控制是否在图表中显示类型信息。
- 未知（Unknown）菜单控制是否显示在源代码中使用但从未声明或定义的实体。
- 未解决菜单控制是否显示已声明但未定义的实体。例如，一个实体可能已在头文件中声明，但从未在源代码中定义。未解决的包含文件是指已包含但未在已声明的包含路径（编译器或项目包含路径）中找到的文件。未解决的实体绘制与正常实体相同，但有虚线边框、
- 使用类分组菜单控制是否按包含实体的类对实体进行分组。默认为关闭。
- Usedby 菜单告诉 "声明 "视图是否显示使用此项目的项目。
- 使用菜单告诉 "使用 "视图是只显示直接使用的项目，还是也显示嵌套子程序使用的项目。默认情况下两者都显示。
- 变量菜单控制是否在声明视图中显示全局项。默认为打开。
- 虚拟调用菜单控制是否显示通过虚拟函数对其派生函数的调用。默认为关闭。
- Withs 菜单控制是否在声明视图中显示编译单元（包、任务、独立过程等......）的 Withs。默认为打开。
- With Bys 菜单控制是否在声明视图中显示特定编译单元的 "Withs"。默认为开启。

== saving graphical views

Understand 提供多种导出图形视图的方法。
每个图形视图的工具栏都提供以下图标，用于复制和打印图形。

除打印外，您还可以将图形视图保存为 JPEG、PNG、SVG 文件、Visio XML 文件和 DOT 文件。
前三种格式是常见的图形格式。

=== saving views to files

要以下列格式保存图形视图，请使用图形视图工具栏上的导出下拉菜单选择导出到 图像文件选项。
或者从菜单中选择File > Export to Image File。
在导出对话框中，选择视图的位置、文件名和文件类型。

#figure(
  image("./img/2023-11-11 10.37.png")
)

- JPEG 文件是压缩位图。大多数网络浏览器、文档编辑器和图形程序都可以查看它们。这种格式是 "有损 "格式；压缩过程中会丢失一些数据。
- PNG 文件存储的压缩位图与 GIF 文件类似。大多数网络浏览器、文档编辑器和图形程序都可以查看它们。它们使用的是一种非专利压缩方法。
- SVG 文件是可缩放矢量图形文件。这种文件类型使用 XML 来描述基于矢量的二维图像。

您还可以将图形视图复制到剪贴板，然后将其作为位图粘贴到您选择的图像程序或文字处理器中。
为此，请单击图形视图工具栏上的复制图标，或从菜单中选择Edit > Copy Image to Clipboard。
然后，将图像粘贴到另一个程序中。

请注意，如果图形产生的图像大于 200 MB，则图形将被调整为较小的大小。

=== saving views as visio(只有windows有) files

Microsoft Visio 是一种基于矢量的图形程序，用于绘制流程图和类似图形。
也就是说，它处理的是形状和对象，而不是像素。
Visio XML 是一种扩展标记语言，Visio 和其他一些图形应用程序都支持这种语言。

您无需安装 Visio 即可将图形视图保存为 Visio XML 文件。

要保存 Visio XML 文件，
请使用图形视图工具栏上的 "导出 "下拉菜单选择 "导出为图像文件 "选项。
在 "导出 "对话框中，
选择视图的位置和文件名。Visio XML 文件的文件扩展名为 `*.vdx`。

=== saving views as DOT files

DOT 是一种用纯文本描述图形的语言。
许多外部工具都可以导入和编辑这种格式。
您可以将许多（但不是所有）由 Understand 生成的图形导出为 DOT 文件。

要保存 DOT 文件，
请使用图形视图工具栏的 "导出 "下拉菜单选择 "导出为 .Dot" 选项。
在 "导出 "对话框中，为视图选择位置和文件名。
文件扩展名为 `*.dot`。

#figure(
  image("./img/2023-11-11 10.42.png")
)

如果 "导出 "下拉菜单中未显示该选项，
则无法将当前图形导出为 DOT 格式。

== printing graphical views

understand 有 下面这些打印模式：

- 源文件打印将文本文件发送到打印机，每页使用 66 行源文件。
- 图形视图打印提供如何将图像适合到页面的选项。

=== graphical view printing

要打印当前图形视图，可以单击图形视图工具栏上的打印图标。
或者从菜单中选择File > Print Entity Graph。

选择打印图形视图后，会出现图形打印选项对话框。

#figure(
  image("./img/2023-11-11 10.46.png")
)

您可以选择以下列尺寸之一打印图像：

- Full size使用默认的 100% 缩放比例。对话框显示宽度 x 高度格式的页数。使用页面设置选择的页面大小。
- Fit to a single page缩放图像以适合所选页面尺寸。
- (scale by)按比例缩放可让您选择大小百分比，并显示将打印的页数。

如果希望将图像保存到 Adobe Acrobat 文件而不是发送到打印机，
请选中保存到 PDF 文件复选框。
此 PDF 打印功能不需要在计算机上安装第三方 PDF 生成软件。

如果希望在每页的左上角和右下角打印页码标识符，请选中打印页码标识符框。
页码采用"（列，行）"格式。例如，(1,3) 表示在拼接页面时，页面位于第三行最左边（第一列）。
如果视图适合在单页上显示，则不打印页码。

选中 "在页边距区域打印页码 "可将页码置于图表边框之外。
如果不选中该复选框，页码指示符将打印在边框标记内。

选中打印页面边框标记复选框可在每页的每个角落放置角标记。

单击打印机按钮，打开操作系统的标准打印对话框。
单击该对话框中的打印或确定后，将返回图形打印选项对话框。

单击页面设置按钮打开页面设置对话框，
您可以在其中选择纸张大小、纸张来源（如适用）、页面方向和页边距宽度。
单击确定返回图形打印选项对话框。

单击图形打印选项对话框中的确定按钮，将图形视图发送到打印机（或 PDF 文件）。

注意：

File > Page Setup菜单选项仅适用于打印源代码和其他文本文件。
图形打印选项对话框上的页面设置按钮会单独保存其设置。

== importing graphical view plugins

插件是特殊的 Perl 或 Python 脚本，可以导入以提供自定义图形视图。

请注意，为大型项目生成图形通常需要大量资源，
在某些情况下，生成图形时系统可能会长时间不响应。

= using CodeCheck for standards Verification

本章介绍如何使用 CodeCheck 查找代码中不符合各种标准的地方。

== about CodeCheck

Understand 提供了一个名为 CodeCheck 的工具，
用于确保您的代码符合已发布的编码标准或您自己的自定义标准。
这些检查可用于验证命名指南、度量要求、已发布的最佳实践，
或对您的团队非常重要的任何其他规则或约定。

#figure(
  image("./img/2023-11-11 10.58.png")
)

检查可用于确保您的代码符合多个已发布的编码标准。
您可以从这些标准中选择要测试的单个检查子集。
例如，您可以检查是否所有 if...elseif 结构都包含最后的 else 子句。

对于所有语言，都提供了检查功能，让您验证各种实体类型是否符合您的命名约定，
并确认您的代码是否符合您为复杂性、函数长度和嵌套深度设置的度量要求。

如果要执行自定义检查，可以使用 Perl 创建自己的检查。
例如，你可以创建一个检查以查找长度超过 80 个字符的行或以数字开头的文件名。

支持网站上的 CodeCheck 类别中提供了 CodeCheck 验证套件。

== running a CodeCheck

要打开 CodeCheck 工具，请从菜单中选择Checks > Open CodeCheck。CodeCheck 窗口有以下工具栏：

#figure(
  image("./img/2023-11-11 11.01.png")
)

您可以按照以下步骤快速运行 CodeCheck 并查看结果。
对于每个步骤，都有进一步自定义 CodeCheck 行为的方法

1.

使用配置下拉列表选择要运行的检查集。
例如，可以选择 "SciTools 推荐检查 "或 "AUTOSAR "检查。
或者，单击扳手图标，选择检查或配置检查集

2.

使用文件下拉列表选择要检查的文件。
可以选择 "所有文件"、"仅上次运行 CodeCheck 后修改的文件"、"仅 Git 仓库中未提交的更改"。
要创建自定义过滤器，
请单击过滤器图标或从下拉列表中选择 "自定义"，
然后按照第 245 页 "选择要检查的文件 "中的说明创建过滤器。

3.

单击 "检查 "按钮，对所选文件运行选定的检查。
检查在后台执行，并显示进度条。对于大型项目，执行检查可能需要很长时间。
在检查运行时，您可以继续使用 understand。
发现违规时，会将其添加到结果列表中。

4.

选择Checks > Re-Run Configuration_Name来运行最近运行的 CodeCheck 配置。
如果您对任何文件进行了更改，系统会询问您是否要在运行 CodeCheck 之前重新分析已更改的文件。

5.

选择Checks > Analyze Changes and Re-Run Configuration_Name
可自动运行Analyze Changed Files命令，然后运行最近运行的 CodeCheck 配置。

6.

使用结果下拉菜单和汉堡包菜单更改结果显示方式。
无需重新运行检查即可更改显示方式。
Violation Browser还提供了方便的搜索结果的方法。

7.

汉堡菜单还提供了处理忽略违规的方法。

使用 CodeCheck 汉堡包菜单控制结果显示。
例如，自动加载上次结果控制重新打开 CodeCheck 时是否自动显示上次执行的 CodeCheck 的结果。
释放窗口控制 CodeCheck 窗口是否包含在understand窗口中。

== configuring checks

在 "配置 "下拉列表中，您可以选择任何一组内置检查。
以下是预配置的快速检查集。这些配置不可编辑。

- SciTools 推荐检查： 针对源代码语言的推荐检查。这些是我们认为最严重的违反标准行为。
- 有效的 C++（第 3 版）Scott Meyers
- Hersteller Initiative 软件 (HIS) 指标
- autosar (C++14)： 涵盖了 >90% 的可静态验证 AUTOSAR 规则。
- MISRA-C 2012
- MISRA-C 2004
- MISRA-C++ 2008

要配置满足特定需求的set of Checks，
请单击扳手图标或从菜单中选择Checks > Checks Selection，
打开 CodeCheck 对话框。
通过该对话框，您可以根据现有配置或从头开始创建自己的 CodeCheck 配置。

要创建或修改配置，请执行以下操作:

1.

单击加号图标。或者，选择一个配置并单击复制图标。也可以右键单击配置名称，选择复制，或直接双击只读配置的名称。

2.

为新配置键入一个名称。沙箱 "配置可用于针对项目测试各种检查。

3.

选中希望此配置运行的验证检查旁边的复选框。检查按标准和语言分类。您安装的任何自定义检查都会列在检查列表中。

#figure(
  image("./img/2023-11-11 13.09.png")
)

4.

您可以在检查列表底部选择为架构节点配置的任何依赖关系检查。单击 "Manage（管理）"打开配置依赖性检查对话框。

5.

从列表中选择检查时，该检查的相关信息将显示在检查列表下方。
对于某些类型的检查（如度量），可以更改值来控制检查的执行方式。
例如，AC_00 检查可让您选择不允许在源代码文件中使用的控制字符类型。
通过 METRIC_04 检查，您可以指定函数中允许的最大行数，并选择只计算代码行还是包括注释行和空行。

#figure(
  image("./img/2023-11-11 13.10.png")
)

6.

要查找对违规类型的检查，请单击搜索图标或按下 Ctrl+F 并在搜索字段中键入字符串。
使用箭头移动到检查简述中包含搜索文本的上一个或下一个检查。
向下箭头可让您将搜索限制为区分大小写的匹配或整词。

#figure(
  image("./img/2023-11-11 13.11.png")
)

7.

单击保存图标或按 Ctrl+S 保存对配置的更改。
当您选择其他配置或关闭对话框时，对配置的更改会自动保存。

8.

要继续编辑已保存的配置，请单击编辑图标。
也可以右键单击配置名称，选择编辑或重命名，或双击配置名称。

9.

要删除配置，请单击删除图标。
也可以右键单击配置名称，选择 "删除"。

10.

要获取配置执行的检查列表，请右键单击配置名称并选择全部复制。
复制到剪贴板的列表只包含每个检查的 ID 代码，如 "MISRA12_4.3"。

=== sharing configurations

您可以通过以下两种方式共享 CodeCheck 配置：
使其可共享；导出配置，以便其他人可以从文件导入配置。

如果你希望此项目的其他用户也能使用此 CodeCheck 配置，
请开始编辑配置，并选中检查列表上方右窗格中的Share this configuration选项。
选中该复选框会将配置保存为项目的一部分。
如果不选中该复选框，配置将保存在其他用户无法访问的目录中。

#figure(
  image("./img/2023-11-11 13.12.png")
)

要将 CodeCheck 配置导出为可导入的文件，
请单击导出图标并浏览到要保存文件的位置。
配置保存为 JSON 文件。
您只能导出已创建（或导入）的配置；不能导出沙箱配置和已发布的标准。

要导入 CodeCheck 配置，请单击导入图标并浏览，
找到包含要导入的配置的文件。
如果配置列表中已有同名配置，则会添加后缀，如"-1"。

== selecting files to check

使用文件下拉列表选择要检查的文件。您可以选择以下任何一种：

- All Files： 检查项目中的所有文件。如果任何源文件已被编辑但尚未保存，则不会检查这些编辑；只会检查已保存的文件版本。
- Files changed since last run： 如果文件已更改并保存，则对其进行检查。
- Uncommitted changes：如果文件在与项目连接的 Git 仓库中，并且有已保存但未提交的更改，则会被检查。
- Customize：打开 "选择文件 "对话框，进一步控制检查哪些文件。过滤器图标也会打开该对话框，可与下拉列表中的其他文件选择选项一起使用。

#figure(
  image("./img/2023-11-11 13.15.png")
)

选择文件 "对话框中的选项有:

- Files changed since：如果自选择日期以来没有更改过文件，则运行 CodeCheck 配置时的返回栏会显示 "0 个文件被选中"，文件下拉列表中也会显示 "Files (0)"，表示没有文件符合标准。
- Files changed in/after Git Commit：如果要检查某个提交后或某个提交中更改的文件，请选择此选项。单击 ...按钮并选择要检查的提交（或粘贴 Git 提交的哈希字符串）。
- Selected files：根据需要展开架构列表，选中架构节点旁边的复选框，确定要检查的文件。

== viewing results

使用结果下拉菜单更改结果显示方式。
执行 CodeCheck 分析后，您可以通过以下任一方式查看结果，而无需重新运行检查：

- 按文件
- 按检查
- 定位器
- 树状图
- 日志
- 违规浏览器

您可以通过忽略特定检查和违规或设置基线来隐藏某些结果。
还可以打印或导出结果。

一般来说，"结果 "区域适合对项目中的所有违规行为进行高层次概览。
相比之下，"违规浏览器 "通常是您修复问题时的首选界面，
因为它提供了更快的导航和问题过滤功能，
例如，可查找已修改但未提交的代码或过去几天内更改的代码。

=== viewing result by file

默认情况下，结果按发生违规检查的文件列出。
在结果下拉列表中，选择按文件返回此显示。

表格列出了每个文件中的违规次数及其完整文件路径。
展开文件路径可查看违规列表以及受影响的实体、行号、列号和检查 ID。
展开违规行为的行，可看到代码片段。您可以双击代码打开源文件。

#figure(
  image("./img/2023-11-11 13.19.png")
)

选择违规时，表格下方会显示该检查的说明和检查的任何例外情况。
您可以在该区域选择文本，然后按 Ctrl+C 将其复制到剪贴板，以便粘贴到其他应用程序中。

CodeCheck 汉堡包菜单中的一些命令允许您显示或隐藏该显示的各个部分。

- 显示违规次数切换显示违规次数。
- 扁平化文件列表切换在文件夹层次结构中组织文件，您可以根据需要展开文件夹层次结构，或如上图所示以扁平化文件列表的形式组织文件。

=== viewing result by checks

在Results下拉列表中，选择By Checks可按违规类型对结果进行排序。
该显示类似于Results by File。但是，特定类型的所有违规都会列在一起。

#figure(
  image("./img/2023-11-11 13.20.png")
)

如果启用了 CodeCheck 汉堡包菜单中的Flatten Files List选项，
则每个违规下的组织结构都是文件列表；
如果禁用了Flatten Files List选项，则是文件夹层次结构。

汉堡包菜单中的Show Violation Counts选项可以切换左栏违规次数的显示。

如果检测到很多特定类型的违规行为，
你可能需要查看检查列表中的各个检查，
看看是否可以设置选项来控制检查的灵敏度。
例如，对于 "神奇数字 "检查，可以指定位域可以设置为固定值，
也可以调用允许 0 和 1 等值的例外情况。
又如，对于 "函数太长 "检查，可以设置认为太长的长度，
并选择忽略注释行和空行。

=== viewing result in the locator

在result下拉列表中，选择locator可在表格中显示结果，
您可以根据文件名、违规名称、行号、列号和实体，使用模式匹配和排序进行搜索。

#figure(
  image("./img/2023-11-11 13.24.png")
)

您可以键入值来匹配文件名和违规行为。
单击列标题中的汉堡包菜单，可查看该列的上下文菜单。
你可以选择过滤器是否区分大小写。
还可以选择过滤器模式匹配语法使用固定字符串（默认）、通配符或正则表达式。
要搜索不包含特定字符串的字段值，请键入 ！(感叹号），然后输入筛选器。

结果下方显示所选检查的说明，说明下方显示围绕违规的五行代码。您可以双击结果打开源文件。

=== viewing result by treemap

在 "结果 "下拉列表中，选择treemap以树状图的形式显示结果。
树状图通过改变节点块的大小和颜色梯度，以图形方式显示指标。
每个节点块代表一个代码文件。
可以将不同的指标与大小和颜色挂钩，以帮助您直观地显示代码的各个方面。


CodeCheck 可让您创建树状图，显示违规检查的总数或密度以及违规类型的数量。
例如，在这个树状图中，块的大小越大，表示该文件中的违规次数越多，深蓝色表示该文件中的违规类型越多。
因此，egrep.c 中的违规次数最多，而 timer.c 中的违规类型更多。
请注意，树状图上方的文字说明了所使用的设置。

#figure(
  image("./img/2023-11-11 13.28.png")
)

您可以双击文件块，打开该源文件。

默认情况下，树状图以项目的文件结构作为架构节点。
在树状地图中，您可以双击一个架构节点（显示为一组彩色块周围的灰色边框），只显示该节点的内容。
您还可以右键单击节点并从上下文菜单中选择Drill down来放大节点。

向下钻取后，您可以使用图标弹出树状地图的一个层级或所有层级。
您还可以右键单击，使用上下文菜单中的 "弹出一个层级 "和 "弹出所有层级 "命令。

单击 "选项 "按钮可修改分配给尺寸和颜色的指标。

=== viewing the results log

在result下拉列表中，选择log可显示运行检查时创建的日志。
日志包括检查的文件数、执行的检查次数以及发现的违规次数。

#figure(
  image("./img/2023-11-11 13.31.png")
)

如果启用了汉堡包菜单中的Use Verbose Logging，
日志还会为发现的每个违规行为单独列出一行。
必须在单击Inspect按钮之前选择该选项才能生效。

要将日志保存到文本文件，请单击导出图标。

=== viewing results in violations(错误) browser

在修复项目中的问题时，"违规浏览器 "通常是比 "结果 "视图更受欢迎的界面。
违规浏览器既显示 CodeCheck 发现的问题，也显示项目分析发现的问题。
违规浏览器还提供更快的问题导航和过滤功能，例如，可查找已修改但未提交的代码或最近几天内修改的代码。

要打开违规浏览器，请从菜单中选择Checks > Browse Violations。

#figure(
  image("./img/2023-11-11 13.50.png")
)

违规旁边有一个彩色圆圈，表示问题的类型。
红色圆圈代表项目分析过程中发现的错误。
黄色圆圈代表项目分析过程中发现的警告。
灰色圆圈表示 CodeCheck 发现的问题。

单击列表中的任何违规，在源代码编辑器中打开源文件，并滚动到违规位置。

在源代码编辑器中，可以单击 "注意 "图标打开 "问题 "侧边栏，其中提供了问题描述。
注意事项图标旁边的上下箭头会移动到该源文件中的上一个/下一个问题。

如果在 "信息浏览器 "中勾选了 "同步 "框，则会显示违规信息。
展开 "检查 "节点可查看违规文本和 ID。
描述 "链接会打开一个页面，对违规进行解释，并在许多情况下给出示例。

#figure(
  image("./img/2023-11-11 13.51.png")
)

通过违规浏览器中的汉堡菜单，可以显示短文件名、相对路径或完整文件路径。
您还可以清除违规浏览器的内容。



通过 "筛选器 "字段，可以快速缩小违规列表的范围，只显示您有兴趣修复的违规。
键入文本以匹配文本字符串中有关违规的任何内容。
如果希望搜索只匹配未提交的违规行为或今天或本周修改的文件中的违规行为，
请使用下拉过滤器

还可以通过检查 ID 字段、检查描述、行号、架构节点和修改日期过滤搜索。
要查看有关此类搜索语法的详细信息，
请单击 "筛选器 "字段右侧的小"? 以下是该搜索语法功能的一些示例：

#figure(
  image("./img/2023-11-11 13.53.40.png")
)

=== viewing SARIF files

除了浏览由 CodeCheck 和项目分析确定的违规行为外，
您还可以将 SARIF 文件导入到 Understand 中并浏览这些违规行为。
SARIF 是一种行业标准格式，用于与其他静态分析工具交换结果。
SARIF 文件的文件扩展名为 .sarif，使用 JSON 语法。

要导入 SARIF 文件，可将文件拖放到 Understand 中。
可以在 "违规浏览器"、"信息浏览器 "和 "问题 "侧栏中查看加载的违规。

请注意，SARIF 文件通常包含文件的完整路径名，
因此您的项目可能找不到导入文件中列出的违规行为所引用的文件。
如果要更改文件路径以匹配驱动器上的路径，可以在导入前手动编辑 SARIF 文件。

== ignoring or excluding(排除) violations

违规行为可能因为被忽略或被排除而被排除在结果之外：

- 忽略的违规由用户手动添加到忽略列表中。
- 排除的违规行为是指找到但不符合检查标准的违规行为。

例如，"自定义 "选项可让您将结果限制为指定日期后更改的文件中的违规。
自该日期以来未修改的文件中的违规即为排除的违规。

CodeCheck 提供了多种方法来忽略全部或部分项目中的违规。
例如，您可能希望忽略项目使用的第三方代码中的违规。
被忽略的违规仍可在 Understand 中查看，但默认情况下是隐藏的。

如果检测到很多违规，你可能需要查看配置中的检查，看看是否可以设置选项来控制检查的敏感度。
例如，对于 "神奇数字 "检查，可以指定位域可以设置为 0 或 1，
但其他值为违规。对于 "程序单元循环复杂度 "等检查，可以设置不被视为违规的最大复杂度。

=== ignoring violations

无论您在哪里看到结果中列出的违规行为，都可以右键单击并选择忽略该违规行为。
有几种忽略设置可供选择：

- 只忽略违规实例。
- 忽略此实体在任何地方出现的此违规检查。
- 仅在此文件和代码行中忽略此实体的此检查违规。
- 忽略当前文件或在此文件位置上方所选目录层中所有文件的此检查违规。如果您选择了一个目录，则其所有子目录中的违规行为都将被忽略。
- 忽略当前文件或在此文件位置上方所选目录层中所有文件的所有检查违规。如果您选择了一个目录，其所有子目录中的违规将被忽略。

#figure(
  image("./img/2023-11-11 13.58.png")
)

如果您决定不需要在结果中包含特定检查的违规行为，请选择删除检查。
这将从当前结果中删除违规，但不会从配置中删除。
下次运行 CodeCheck 配置时，将再次显示违反该检查的情况。

选择忽略违规时，系统会要求您确认是否可以忽略多个违规。
接下来，系统会询问您是否要添加关于此忽略违规的备注。
如果单击 "是"，就可以键入文本，例如解释忽略的原因。

您选择忽略的违规不会在结果列表中列出，
除非您在 CodeCheck 汉堡包菜单中启用显示忽略的违规。
如果您显示了忽略的违规，
并且在违规描述旁边的球上有一个 X，
这些违规就会突出显示。
如果隐藏违规，则违规计数不包括忽略的违规，
但如果显示忽略的违规，则包括忽略的违规。

显示排除的违规行为切换显示排除的违规行为。
这些是根据文件过滤从结果中排除的文件中的违规。

如果您忽略了任何违规，请单击忽略列表按钮，查看当前忽略的违规列表。
您可以像搜索结果定位器列表一样搜索该列表。

要删除忽略的违规（即将其恢复到结果列表中），
请在忽略列表视图中选择一行，
然后单击 CodeCheck 工具栏中的删除图标。
也可以使用右键菜单或按删除键删除选定的忽略。

=== adding notes about ignored violations

您可以为忽略列表中的每一行添加注释，并将每个忽略限制为文件中的某些行。
注释显示在注释列中，行规格显示在行列中。你可以根据这些列进行排序和筛选。

- 注释：这是文本信息，如关于忽略的注释。要为忽略添加注释，请选择一行并单击添加/编辑注释图标。键入备注并单击确定。要删除备注，请选择一行并单击删除备注文本图标。也可以使用右键菜单或按 + 和 键添加和删除备注。
- 行： 这是忽略适用的行号或行号范围。要为忽略指定行，请右键单击行并选择添加/编辑行。例如，键入 65 可将忽略只应用于第 65 行；键入 60-70 可将忽略应用于该行数范围；键入 `*` 可将忽略应用于文件中的所有行。要删除行规范，请打开相同的对话框并删除值。

=== using baseline ignore settings

CodeCheck 可让您设置一个基线，忽略旧代码中的现有违规行为，以便识别新代码或修改代码中的违规行为。

在结果和忽略列表中，基线忽略的背景为绿色，而常规违规忽略的背景为蓝色。使用代码中的注释创建的忽略（请参阅第 256 页的 "为代码添加自动忽略"）背景为橙色。(无论忽略或结果类型如何，所选行的背景都是深蓝色）。

#figure(
  image("./img/2023-11-11 14.00.png")
)

要将所有当前违规设置为基线违规，请执行以下操作

1.

运行 CodeCheck 配置。

2.

单击

3.

将所有当前违规设置为基线图标。单击 "确定 "允许创建多个忽略基线。

4.

单击忽略列表按钮，查看已创建的基线忽略列表。(如果在 CodeCheck 汉堡包菜单中关闭了Show Baseline Ignores，则基线忽略将从该列表中隐藏）。

要将基线忽略更改为简单忽略，请右键单击该行，然后在忽略列表中选择Set as manual in Ignores list。

要将简单忽略更改为基线忽略，请右键单击该行，然后在Set as a Baseline in Ignores list.。

要从忽略列表中完全删除基线忽略，请右键单击该行并选择从Remove from Ignores list。

要从忽略列表中完全移除所有基线忽略，请单击 CodeCheck 工具栏中的Remove all Baseline False Positives。

要在结果列表（按文件、按检查等）中隐藏或显示基线违规，请在 CodeCheck 汉堡包菜单中切换Show Baseline Violations。
请注意，如果启用Show Baseline Violations，则会显示所有忽略的违规，因为基线忽略是忽略的一种类型。

=== adding automatic ignores to code

此外，您还可以在代码中添加注释，让 Understand 忽略特定的违规行为。一般格式如下：

```cpp
statement; //UndCC_Line(*) 关于批准违规的注释
```

例如

```cpp
goto FOO; //UndCC_Line(*) Gerry 于 2019 年 11 月 7 日批准使用 goto
```

此类注释可在忽略列表中创建一条规则，以忽略此行中的所有 CodeCheck 违规行为，并添加关于批准过程的注释。
可以使用 C 风格 (`/* */`) 或 C++ 风格 (`//`) 注释。

通过以下附加关键字，您可以为下一行、一系列行、整个文件、实体或实体中的一系列行创建忽略规则。

- `//UndCC_NextLine(*)` 忽略下一行的所有违规行为。
- `//UndCC_Begin(*)` 忽略从这一行开始到_End 的所有违规行为。
- `//UndCC_End(*)`
- `//UndCC_File(*)` 忽略此文件中的所有违规行为。
- `//UndCC_Entity(EntityName,*)` 对于名为 EntityName 的下一个实体，忽略任何地方的所有违规行为。
- `//UndCC_EntityBegin(EntityName,*)` 对于名为 EntityName 的下一个实体，忽略直到 `_EntityEnd` 的所有违规行为。
- `//UndCC_EntityEnd(EntityName,*)`

关键字后的星号可以用 CheckID 或 CheckID 列表代替，
这样只有指定的违规行为才会被忽略。
例如，下面的示例只忽略违反 MISRA 规则 2.1 的行为：

```cpp
stmt; //UndCC_File(MISRA12_2.1) 外部应用程序可访问的代码
```

有关其他详细信息和示例，请参阅支持网站上的 "CodeCheck 注释关键字 "主题。
您可以在 CodeCheck 汉堡包菜单中切换 "自动忽略时要求明确 CheckID"，
以要求所有 //UndCC 注释标识特定的 CheckID，
而不是使用星号。如果在此类注释中使用 `*`，注释将被忽略。

== exporting CodeCheck results

CodeCheck 提供了多种使用结果的方法。

- 打印： 单击 CodeCheck 工具栏中的打印图标，可将文件、检查、定位器和树状图视图中的结果打印到 PDF 文件或物理打印机上
- 导出： 单击 CodeCheck 工具栏中的导出图标，可将文件、检查和定位器视图中的结果导出为 HTML、剪贴板或文本文件。导出的文本是一个以制表符分隔的值文件，其中列出了完整的文件路径、用于识别实体的内部 ID 字符串、发生的违规类型以及识别该违规的正在执行的检查。HTML 输出还包括是否忽略违规和关于忽略违规的任何注释列。

在树状地图视图中，可以单击 PNG、JPG 或 SVG 文件。

导出图标，将树状地图保存到

使用导出图标可将日志视图复制到剪贴板中的文本文件。

复制图标或导出到

在 "按检查结果 "视图中，"导出 "图标允许您导出详细或摘要结果。摘要报告类似于下图：

#figure(
  image("./img/2023-11-11 14.11.01.png")
)

== writing CodeCheck scripts

CodeCheck 脚本是一种特殊的 Python 或 Perl 脚本，可让您创建用于验证团队编码标准的自定义检查。
它们可用于验证命名指南、度量要求、已发布的最佳实践，或对团队非常重要的任何其他规则或约定。

您可以使用 Understand Python 或 Perl API 开发这些脚本，
同时还可以使用一组专门用于与 Understand CodeCheck 界面交互的特殊函数。
以下示例使用 Perl API。

您也可以通过 "und "命令行使用 CodeCheck。

用 Perl 编写的 CodeCheck 脚本文件扩展名为 `*.upl`，用 Python 编写的脚本文件扩展名为 `*.upy`。

要开始编写自己的检查，请按照以下步骤进行：

1.

在插件 Git 仓库的 CodeCheck 子目录中找到要修改的模板脚本，网址是 https://github.com/stinb/plugins。

2.

使用文本编辑器编辑模板文件。

3.

修改名称、描述和 detailed_description，使其与您计划的检查内容相匹配。
例如，您可以使用以下描述来进行检查，以确保行数不超过指定长度：

```script
# Required - Return the short name of the check sub name { return "Characters per line";}

# Required - Return the unique identifier for this check. sub checkID { return "TEST_01_CHAR_PER_LINE";}

# Required - Return the short description of the check sub description { return "Lines should not exceed a set number of characters";}

# Required - Return the long description of the check sub detailed_description { return "For readability, lines should be limited to a certain number of characters. The default is 80 characters per line.";}
```

4.

修改 test_language 子程序，以测试所需的语言。
例如，下面的测试使检查适用于 C++、Java 和 Python。
您可以查看安装目录下 `\conf\plugin\SciTools\Codecheck`子目录中的其他脚本，以获取更多示例。

```script
sub test_language {
  my $language = shift;
  return $language =~ /C++|Java|Python/;
  return 1;
}
```

5.

如果检查应按实体进行，则 test_entity 子程序应返回 1。
如果每个文件只需运行一次检查，则 test_entity 子程序返回 0。例如

```script
sub test_entity { return 1;}
```

6. 

如果每个项目只运行一次检查，则 test_global 子程序返回 1。
否则，test_global 子程序将返回 0。例如

```script
sub test_global { return 0;}
```

7. 

如果检查需要用户设置选项，请修改 define_options 子程序。例如

```script
sub define_options{
  my $check = shift;
  $check->option->integer("charPerLine","Max Characters per line",80);
}
```

8.

修改检查子程序，使其包含检查功能，并发出 CodeCheck 违规报告信号。
下面的示例报告了不以字母开头的文件名：

```script
if ($file->name =~ /^[^a-zA-Z]/){
  $check->violation(0,$file,-1,-1,"File name does not begin with a letter");
}
```

下面的示例报告的行数超过了指定的最大值：

```cpp
sub check {
  my $check = shift;
  my $file = shift;
  return unless $file->kind->check("file");

  my $maxChar = $check->option->lookup("charPerLine");
  my $lineNum = 1;
  foreach my $line (split('\n',$file->contents)){
    my $length = length($line);
    if($length > $maxChar){
      $check->violation($file,$file,$lineNum,-1, "$length characters on line(Max: $maxChar)");
    }
      $lineNum++;
  }
}
```

9.

验证 Perl 语法是否正确。
最简单的方法是打开命令行，
运行 Understand 附带的 Perl 应用程序：uperl -c mysample.upl。

=== installing custom scripts

您可以将脚本文件拖放到 "Understand "窗口中，
在 "Understand "中安装脚本。
系统会询问您是否要安装插件。单击安装。

安装自定义检查时，您会看到一条信息，指明安装检查的目录。
例如，`C:\Users\YourName\AppData\Roaming\SciTools\plugin\Codecheck`。
你可以通过将文件直接复制到此目录来安装未来的检查。

= comparing(比较) source code

本章将解释 Understand 提供的历史记录和源代码比较功能。

== comparing files and folders

Understand 提供了一个比较文件和文件夹的工具。
您可以使用该工具比较相似的文件或目录树，或比较文件或目录树的新旧副本。
要比较 Understand 项目新旧版本中的实体，还可以使用 "已更改实体 "视图

要打开此工具，请从菜单中选择Compare > Compare Files/Folders。

#figure(
  image("./img/2023-11-11 14.24.png")
)

在此对话框中，选择一个文件或文件夹进行左右对比。
两边都应该是相似的文件或相似的文件夹。
单击文件按钮浏览文件；单击文件夹按钮浏览目录。然后单击Compare。

#figure(
  image("./img/2023-11-11 14.25.png")
)

所选目录的子目录也会被比较。

如果比较的是文件夹，还有一个额外的底部窗格，显示文件夹级和文件级的差异，让你可以过滤要比较的内容。

比较项目中两个文件的快速方法是右键单击一个文件的名称（例如，在项目浏览器中）
并从右键菜单中选择Compare > Set as Left File/Directory Comparison，
右键单击另一个文件并选择Compare > Set as Right File/Directory Comparison，
然后选择Compare > Compare Files/Directories。

#figure(
  image("./img/2023-11-11 14.29.png")
)

已更改的文件和文件夹名称显示为蓝色。
只存在于右侧版本（添加）的文件和文件夹显示为绿色，
只存在于左侧版本（删除）的文件和文件夹显示为红色。
你可以从汉堡菜单中选择显示图标，在列表中加入文件夹和文件图标。
这些图标上有箭头和 ≠ 符号，表示内容是否已添加、删除或更改。

默认情况下，会列出所有文件和文件夹。
你可以使用 "显示 "下拉菜单来选择是否将列表限制为只显示：

#figure(
  image("./img/2023-11-11 14.30.png")
)

- difference：显示只存在于一个版本或在两个版本中不同的文件和文件夹。
- left only：只显示左侧版本中包含的文件（已删除）。所有不同的文件夹都会显示，因为有些文件夹可能包含只存在于左侧版本中的文件。
- right only：只显示右版本中包含的文件（已添加）。显示所有不同的文件夹，因为有些文件夹可能只包含右侧版本中的文件。
- same：显示两个版本中相同的文件。显示所有文件夹，因为一些不同的文件夹可能包含相同的文件。

在 "筛选器 "字段中，您可以键入要在目录路径或文件名中匹配的字符。
例如，输入 sim 会匹配名称中包含 "sim "的文件夹或文件。
文件夹中与筛选器（和显示下拉设置）匹配的所有文件都会显示出来。
筛选仅在单击重新扫描图标后进行。
如果要使用正则表达式，请在汉堡菜单中启用该选项。
通配符不被识别。

#figure(
  image("./img/2023-11-11 14.31.png")
)

您可以高亮显示仅存在于左侧或右侧版本中的所有项目。
为此，首先右键单击文件列表并选择 "全部展开"。
然后单击 "选择 "图标，选择 "左孤儿 "或 "右孤儿"。
你会看到一个警告，表示某些项目可能被跳过；
这只适用于你没有使用 "全部展开 "的情况。
被选中的项目数量显示在工具栏中。

#figure(
  image("./img/2023-11-11 14.32.png")
)

你可以将文件夹和文件从一侧复制到另一侧。
复制的项目会覆盖任何具有相同名称的项目。
要复制，首先要选择要复制的项目。
(要复制文件夹及其内容，请选择文件夹及其包含的所有文件夹和文件）。
然后单击 "复制/合并 "图标，选择向左或向右。
这将打开 "复制文件 "对话框，列出要复制的文件或文件夹。
如果列表正确，单击确定。
单击 图标撤销上次的复制/合并更改。
单击图标重做上次撤销的更改。

如果你修改了右侧的某个文件，可以单击保存图标将该文件保存到其现有位置。
如果你修改了一个文件，然后切换到另一个文件的对比，系统会询问你是否要保存和重新对比文件。

#figure(
  image("./img/2023-11-11 14.33.png")
)

默认情况下，左边的文件为只读模式，右边的文件为读写模式。
你可以单击文件，然后单击状态栏中的 "RO "或 "RW "来切换文件的模式。
但是，无法保存左侧的文件。


== comparing entities

从菜单中选择Compare > Compare Entities，就可以比较两个实体。
此时会出现Compare Entities窗口。
在左右两个实体过滤窗格中选择实体，即可看到比较结果。

比较项目中定义两个实体的代码的快速方法是右键单击一个实体的名称并从上下文菜单中选择Compare > Set as Left Entity Comparison，
右键单击另一个文件并选择Compare > Set as Right Entity Comparison，然后选择Compare > Compare Entities。

#figure(
  image("./img/2023-11-11 14.34.png")
)

顶部部分与其他类型的比较类似

比较下方是实体过滤器
在显示下拉菜单中选择实体类型。
然后使用列表选择要比较的两个实体。
在过滤器字段中，您可以键入要与实体名称中任意位置匹配的字符串。
在键入的同时进行筛选。通配符和正则表达式无法识别。

如果比较的实体不是文件（如函数），则不允许在比较中合并更改和保存文件。

如果比较的是文件，可以单击 "合并 "图标将更改合并到右侧的文件中，
单击 "保存 "图标将更改保存到右侧的文件中。

== comparing text

从菜单中选择Compare > Compare Arbitrary Text，
就可以比较粘贴到窗口中的文本。
将要比较的前后文本分别粘贴到左右两侧。
两边会自动进行比较：

#figure(
  image("./img/2023-11-11 14.35.png")
)

文本比较类似于两个实体之间的比较。
您可以合并和取消合并差异，但不能保存文件。
如果需要保存合并后的文本，请复制并粘贴到另一个文件窗口。

比较文本的快速方法是选中某些文本，右键单击，
然后从上下文菜单中选择Compare > Set as Left-Text Comparison。
然后选中其他文本，单击右键并选择Compare > Set as Right-Text Comparison。
最后，选择Compare > Compare Text Selections。

== comparing projects

如果拥有同一项目的两个版本的完整独立副本，或者使用 Git 管理源代码，就可以比较同一项目的旧版本和新版本（或变体）。

要比较项目的不同版本，请按照以下步骤操作：

1.

打开较新版本的项目。

2.

从菜单中选择Compare > Comparison Projects。
这将打开Comparison Projects区域。

#figure(
  image("./img/2023-11-11 14.39.png")
)

3.

通过以下方式之一选择项目的上一版本：

- Git revision：单击Create from Git图标。在 "从 Git 创建新项目 "对话框中，浏览到从 Git 仓库克隆的顶层目录位置。在 "Git 提交 "字段中，单击"... "按钮，选择要与当前版本比较的提交的注释（或粘贴 Git 提交的哈希字符串）。提供一个目录位置和数据库名称，以便创建一个与旧版 Git 提交相匹配的 Understand 项目。要使创建项目的项目设置与当前项目相匹配，请选中 "创建后配置设置 "复选框。单击创建项目。
- 旧版或变体项目数据库： 单击使用现有数据库图标。浏览以选择 `*.und` 目录的另一个副本，其中存储了此 Understand 项目的旧版本或变体版本。单击确定。
- 从以前比较过的项目中选择： 比较项目 "区域会列出之前比较过的项目。将鼠标光标悬停在项目文件名上可查看项目的存储位置。您可以双击一个项目，打开它进行比较。

4.

系统可能会提示您分析新数据库或现有数据库。
单击确定并等待分析完成。
如果要强制分析比较项目，请单击比较项目区域中的分析图标。

5.

如果比较项目区域列出了多个项目，请选择要与当前打开的项目进行比较的项目。

6.

从菜单中选择Compare > Locate Changed Entities，或单击比较项目区域底部的Locate Changed Entities。
(对于大型项目，这可能需要一些时间）。

这将在您的understand窗口底部打开 "已更改实体定位器 "区域，并在顶部打开比较窗格。
使用 "已更改实体定位器 "进行筛选和排序与使用 "实体定位器 "类似。
在 "项目配置 "对话框的 "历史记录 "类别中，可以控制对空白、行结束符和注释的更改是否算作对实体的更改

7.

从已更改实体列表中选择一个实体，以便查看更改。

8.

单击合并图标，可以将项目上一版本的更改合并到当前版本。单击保存图标可将更改保存到右侧的文件版本。

默认情况下，"已更改实体定位器 "中的列包括状态（已更改、已添加或已移除）、
实体、种类、已声明、已更改行、新增行、已移除行和已更改百分比。

#figure(
  image("./img/2023-11-11 14.42.png")
)

你可以单击工具栏上的加号图标来添加列，
如架构路径、文件修改日期以及多个指标的新旧值差异。
您可以对所有这些列进行排序和筛选。

#figure(
  image("./img/2023-11-11 14.43.png")
)

一旦设置了比较项目，就可以显示比较蝴蝶图和比较控制流图。

单击关闭比较项目图标可关闭上一个项目（以节省内存）。

== comparing graphs

如果拥有同一项目的两个版本的完整、独立副本，
就可以创建图表来比较同一项目的新旧版本。
要创建此类图表，请按照以下步骤操作：

1.

如第 265 页的比较项目中所述，指定一个比较项目，然后运行定位更改实体。

2.

右键单击一个实体（如函数），然后从图形视图中选择比较图形。
根据所选实体的类型，比较图可能包括比较控制流、比较butterfly或比较对象引用。

3.

比较图使用图例中显示的颜色突出显示已修改、已添加、已删除和未解决的实体和引用。
您可以在Tools > Options对话框的图表类别中更改这些颜色。

#figure(
  image("./img/2023-11-11 14.45.png")
)

4.

单击图形中的任意节点，可跳转到图形下方文件差异窗格中两个版本项目之间的更改。

=== comparison treemaps

您还可以创建树状图，显示比较项目中文件、类或函数更改的两个统计数据之间的关系。
要生成树状图，请按照以下步骤操作：

1.

按照第 265 页的比较项目中的说明指定一个比较项目，然后运行Locate Change Entities.。

2.

从菜单中选择Compare > Changes Treemap。
这将打开 "度量树状图选项" 对话框

#figure(
  image("./img/2023-11-11 14.48.png")
)

3.

在 "Map metrics for "字段中，选择树状图中的块是文件、类和结构体还是函数。

4.

在Group by字段中，选择按什么架构对数据块进行分组。
默认为目录结构。

5.

在Size Options区域，选择映射到每个块大小的比较统计量。
选项包括更改百分比、删除行数或更改行数，
或者 CountLine、CountLineCode、CountPath 或 Cyclomatic 复杂性指标的差异。
如果某些文件或函数与项目其他部分相比非常大，
限制大节点的大小会使树状图更易于查看。
在 "项目配置 "对话框（参见第 52 页）的 "历史记录 "类别中的设置可以控制对空白、行结束符和注释的更改是否算作更改。

6.

在Color Options区域中，将Map Color设置为比较统计量，
以便映射到每个块的颜色。
单击左侧颜色方块，
为该指标值最低的区块设置颜色；
单击右侧颜色方块，为该指标值最高的区块设置颜色。

7.

如果希望颜色以所选度量值的 10 次方缩放，
请选中Use Logarithmic Scale复选框。
这对具有极端值范围的树形图非常有用。

8.

如果希望在图块中看到纯色，
请取消选中缓冲框。
默认情况下，图块采用渐变填充。

9.

如果希望缩放树状图颜色，请选中自定义缩放选项并指定最小值和最大值。
如果映射到颜色梯度的度量值小于或等于最小值，节点将显示最小颜色。
同样，如果映射到颜色的度量值大于或等于最大值，则节点的颜色为最大值。
这样可以更方便地在不同项目之间进行比较，或使用相同比例的前后图片。
如果要隐藏此范围之外节点的图块，请选中隐藏自定义比例离群值复选框。

10.

单击生成树状地图以显示树状地图。
(单击树状地图右上角的选项可返回选项对话框。

== exploring git history

如果使用 Git 进行源代码控制，
Understand 还能与 Git 集成。
您可以直接在源代码中查看提交历史和其他 Git 信息。
这包括查看谁修改或创建了文件，
并排查看版本差异，以及查看提交信息，
所有这些都无需离开 Understand。

对于大多数功能，Understand 都能自动找到 Git 信息。
但在 CodeCheck 中根据未提交的更改进行过滤时例外。
要使用此功能，请在 "项目配置 "的 "历史记录 "类别中指定 Git 仓库（第 52 页）。

如果要在源代码编辑器窗口中使用 Git 集成，
请选择 Tools > Options（或 MacOS 上的 understand > perference）打开 "选项 "对话框，
然后切换以下选项：

- 在 "编辑器"类别中，切换 "边距 "区域中的 "责备 "选项。
- 在 "编辑器" > "高级" 类别中，切换 "版本控制 "区域中的 "显示内联责备 "选项（需要向下滚动才能看到）。

此外，在源代码编辑器窗口中，
可以使用汉堡包菜单中的工具栏部分类别来显示或隐藏版本控制工具栏图标，
这些图标可以显示/隐藏源代码编辑器边距中的责备栏，并打开未提交更改差异视图。

启用责任栏后，在编辑器的左侧空白处，
你会看到编写或修改每行代码的程序员姓名缩写。
如果你指向首字母缩写，
就会看到悬停文本中的作者、提交日期、提交信息和提交 ID。

#figure(
  image("./img/2023-11-11 14.56.png")
)

你可以使用源代码编辑器工具栏上的图标来切换责任边距的开关。

如果修改文件时启用了责任边距，
则会在编辑时添加更改栏，以显示未提交的更改。

启用内嵌提交信息后，提交信息会显示在代码行右侧的内嵌栏中。
只显示当前选定行的 Git 提交信息。
如果提交信息较长，可将鼠标悬停在该行上查看更多信息。

#figure(
  image("./img/2023-11-11 14.57.png")
)

此外，信息浏览器还会在历史节点中显示文件的任何相关 Git 信息。
展开 "历史 "下拉菜单，就能看到该文件每次提交的时间顺序列表。

#figure(
  image("./img/2023-11-11 14.58.png")
)

你可以通过以下方式打开与其他比较视图类似的 "提交历史 "视图

- 单击源编辑器窗口责备边框中的提交指示器。
- 单击信息浏览器历史列表中的提交。
- 单击源代码编辑器工具栏中的图标，比较上次提交的版本和当前未提交的更改。

在此视图中，你可以将任何提交中的更改与文件的上一版本并排比较。
较新版本显示在右侧窗格中，而文件的前一个版本则显示在左侧窗格中。
该选项卡的工具栏显示了两个版本的创建或更改日期，
点击工具栏中文件名周围的箭头图标，就可以在较早和较晚的提交之间循环切换。

当右窗格显示的是未提交的工作版本时，
你可以使用工具栏上的 "还原 "图标来撤销当前选定的最后提交版本与工作版本之间的差异。
如果发现多个差异，可以使用差异数量周围的箭头导航到下一个或上一个差异。

#figure(
  image("./img/2023-11-11 14.59.png")
)

== exploring differences

比较项目时，您会看到一个比较窗口。
比较下方的区域因比较的内容而异。
在各种类型的比较中，比较本身的控件保持相似。

#figure(
  image("./img/2023-11-11 15.00.png")
)

左侧窗格显示正在比较的第一个项目；
右侧窗格显示第二个项目。
比较项目的名称或路径显示在两个比较窗格的上方。

如果要比较多个文件夹，可以使用文件路径周围的箭头移动到下一个或上一个文件。

如果发现多个不同点，可以使用不同点数量周围的箭头导航到下一个或上一个不同点。

在任一源窗格中单击右键，都会显示与源编辑器中类似的上下文菜单。

两个窗格的滚动在水平和垂直方向上是同步的。垂直滚动条使用高亮颜色显示代码更改部分的位置和大小。

比较文件时，左边的文件默认为只读模式，右边的文件默认为读写模式。
你可以通过单击文件，然后单击状态栏中的 "RO "或 "RW "来切换模式。
但是，无法保存左边的文件。

#figure(
  image("./img/2023-11-11 15.01.png")
)

比较文件时，可以通过单击 "合并 "图标，
将当前选定的左侧版本差异合并到右侧文件中。
单击该图标可撤销上次的合并更改。
要将左侧文件中的所有差异合并到右侧文件中，
请使用合并图标旁边的下拉箭头选择 "全部合并"。
比较实体时不支持合并差异。

如果修改了右侧的文件，
可以单击保存图标将该文件保存到其现有位置。
如果您修改了一个文件，
然后切换到另一个文件的比较，
系统会询问您是否要保存并重新比较文件。

compare的汉堡包菜单

提供以下命令：

- 大小写不敏感： 默认情况下，字母大小写的改变不作为差异处理。例如，如果将 "a "改为 "A"，则不会突出显示差异。您可以通过关闭该选项来改变这种行为。
- 跳过空格： 默认情况下，更改空格或制表符的数量不会被视为差异。如果只更改了空白，则不会发现差异。你可以通过关闭该选项来改变这种行为。
- 文件为 Unicode： 默认情况下，仅报告 ASCII 文件的差异。如果 Understand 显示 "文件为二进制"，请切换此选项以打开 Unicode 文件处理。
- 高亮显示不同单词： 默认情况下，包含差异的整行都会高亮显示。切换此选项还可以用另一种颜色高亮显示个别不同的单词。
- 不同单词颜色：选择用于高亮显示比较中不同的单词、数字或符号的颜色。这种颜色是一种叠加色，会根据情况与其他高亮颜色相结合。
- 高亮颜色： 选择用于高亮比较中不同线条的颜色。
- 释放窗口： 切换此选项可在独立窗口中打开比较。这在比较较大文件时非常有用。

如果对文件进行了更改，则 "大小写不敏感"、"跳过空白 "和 "文件为 Unicode "选项不可用。

= running tools and external commands

本章将向您介绍如何在 Understand 中配置和使用源代码编辑器及其他外部工具。

== configuring tools

从菜单中选择Tools > User Tools > Configure，
打开options对话框的user tools类别，
您可以在此配置外部工具（如源代码编辑器），
以便在 Understand 中使用。
配置好的外部工具可通过上下文敏感启动。
选项 "对话框为 "用户工具 "类别提供了子类别，用于控制如何启动您配置的工具。

#figure(
  image("./img/2023-11-11 15.05.png")
)

首先，使用选项对话框的用户工具类别定义命令和参数，如下所示：

1.

单击新建。

2.

在菜单文本字段中，键入希望出现在此工具的理解菜单中的名称。
您可以在菜单文本中使用变量。
例如，您可以使用 `$CurEntity` 将当前选定实体的名称放在工具名称中。

3.

如果您使用的工具在可执行文件搜索路径中，只需在命令字段中键入其文件名即可。
如果不在，请使用浏览按钮指定其可执行文件的完整路径。

4.

在参数字段中，指定需要在工具命令行中传递的参数。
以 `$Cur` 开头的变量是当前位置变量，仅适用于源代码编辑器窗口。
以 `$Decl` 开头的变量是声明变量，仅在选择了具有声明的实体时使用。
以 `$Prompt` 开头的变量会显示一个对话框，向用户询问一些信息。
可以使用 `<` 符号分隔需要来自 stdin 的参数。
例如，如果需要从 stdin 获取工具的密码，可以使用 `<` `$PromptForPassword`

参数列表中的引号与 Microsoft Windows 命令提示符窗口和 Linux 终端中的引号处理方式相同。
这与以前的行为有所不同。例如

#figure(
  image("./img/2023-11-11 15.07.13.png")
)

5.

在初始目录字段中，指定工具开始运行的目录。
可以在该字段中使用 `$CurProjectDir` 等变量。

6.

在图标文件字段中，键入或浏览作为该命令图标的小型图形文件。
您可以选择 BMP、GIF、PBM、PGM、PNG、PPM、XBM 或 XPM 文件。

7.

选择要用于该命令的输入。
选项包括无（默认）、选定文本和整个文档。
选定文本 "和 "整个文档 "选项用于从 "源编辑器 "运行工具。

8.

选择要如何处理命令的输出。选项包括:

- 丢弃输出。这是默认选项。
- 在 "命令窗口 "中捕获输出，该窗口默认出现在 "信息浏览器 "附近。如果运行其他工具或重新运行同一工具，默认情况下命令窗口会重复使用。您可以取消选中命令结果窗口上的重复使用复选框，强制将结果转到新窗口。
- 替换当前源代码编辑器窗口中的选定文本。
- 替换当前源编辑器窗口中的整个文档。
- 在源编辑器窗口中创建新文档。
- 复制到剪贴板，以便将结果粘贴到其他地方。

9.

如果这是一个使用 Understand Perl API 的 Perl 脚本，请选中 Understand Perl 脚本框。

10.

如果不想在打开当前项目时使用此用户工具，
请选中禁用此项目复选框。

在当前项目打开时可用。

11.

在 "分析选项 "区域，选择您希望在该用户工具完成操作并返回之前和/或之后执行的操作。
这些操作包括保存所有文件、重新扫描项目目录中的新文件、分析修改后的文件以及分析所有文件。

12.

在 "添加到... "区域中，选择您希望在

了解。上下文菜单 "复选框会将该工具添加到右键单击的上下文菜单中。

菜单。顶层菜单 "复选框将工具添加到 "工具">"用户工具

子菜单。工具栏复选框将工具图标添加到工具栏。

要编辑现有工具的设置，请在列表中选择该工具并根据需要进行更改。
单击 "确定 "保存更改。
如果要删除工具，请选择该工具并单击删除按钮。

=== variables

以 `$Cur` 开头的变量是当前位置变量，仅适用于源代码编辑器窗口。
以 `$Decl` 开头的变量是声明变量，仅在选择了具有声明的实体时才会使用。
以 `$Prompt` 开头的变量会显示一个对话框，向用户询问一些信息。

您可以在命令或参数字段中使用以下变量

#figure(
  image("./img/2023-11-11 15.23.21.png")
)

#figure(
  image("./img/2023-11-11 15.24.03.png")
)

#figure(
  image("./img/2023-11-11 15.24.44.png")
)

#figure(
  image("./img/2023-11-11 15.25.06.png")
)

== adding tools to the context menus

一般来说，多选 `$Prompt` 变量接受格式为 "label=item1;item2 "的字符串。
任何数量的项目都可以用分号分隔。所有选中项目的项目字符串（用空格分隔）都将传递给命令。

除 `$PromptForCheckBox`、`$PromptForDir`、`$PromptForFile` 和 `$PromptForText` 外，标签均为可选项。
在 `$PromptForDir`、`$PromptForFile` 和 `$PromptForText` 的情况下，默认值是可选的。

提示在其他类型变量之后处理，因此可以在标签和值中使用其他变量。
有关示例，请参阅上表中的 `$PromptForDir` 和 `$PromptForFile`。

此外，操作系统环境变量也可用于提示语法。
例如，`$PromptForSelect` `"Dir=$PATH"` 将显示 `$PATH` 定义中所有目录路径的下拉列表。

您可以选择在单独文件中提供项目列表。
在这种情况下，大多数 `$Prompt` 变量的语法都是 `label=@fullpath_of_listfile.txt`。

可以通过组合变量来传递命令所需的所有参数。
所有提示都会合并到一个对话框中。
例如，如果命令是 "ls"，可以使用以下参数创建一个对话框，让您为 ls 命令选择命令行选项：

#figure(
  image("./img/2023-11-11 15.28.00.png")
)

== adding tools to the tools menu

在 "工具 "选项卡中定义命令后，
"选项 "对话框中的 "上下文菜单 "类别会在左侧列出当前在上下文菜单中的用户工具，
在右侧列出可以添加到该菜单中的命令。
(上下文菜单有时也称为上下文菜单、快捷菜单、右键菜单或弹出菜单）。

选择Tools > User Tools > Configure，
然后选择User Tools > Top Level Menu类别。

#figure(
  image("./img/2023-11-11 15.33.png")
)

要在上下文菜单中添加工具，请在右侧选择该工具并单击添加。
要从上下文菜单中移除工具，请在左侧选择该工具并单击移除。

用户工具在上下文菜单中显示的顺序与左侧列中列出的顺序一致。
使用 "上移 "和 "下移 "按钮可根据需要对工具进行排序。

#figure(
  image("./img/2023-11-11 15.34.png")
)

本图显示了一个实体的上下文菜单，其中显示了可用的外部工具。

工具在上下文菜单中处于活动或非活动状态，取决于提供给工具的参数的上下文。
例如，将 `$DeclFile` 指定为参数的源代码编辑器可在已知声明的任何实体的上下文菜单中选择，
但对于未声明的实体或未选择实体时则不会激活。

== adding tools to the toolbar

在 "工具 "选项卡中定义命令后，
"选项 "对话框中的 "工具栏 "类别就会在左侧框中显示当前工具栏中的用户工具，
并在右侧框中显示可以添加到工具栏中的命令。

选择Tools > User Tools > Configure，然后选择User Tools > Toolbar Order类别

#figure(
  image("./img/2023-11-12 10.00.png")
)

要将工具添加到工具栏，请在右侧选择该工具并单击add。
要从工具栏中移除工具，请在左侧选择该工具并单击remove。

要在工具栏中添加垂直分隔线，
请在工具栏顺序框中选择右侧应有垂直线的项目。
单击insert separator，将"-----------"添加到列表中。

所选工具的图标将按照左侧列中的顺序出现在工具栏上。
使用 "上移 "和 "下移 "按钮可根据需要对图标进行排序。

要更改特定工具的图标，请使用用户工具类别中的图标文件字段。
例如，下图显示了在图形视图图标和分割工作区图标之间添加的两个用户工具图标。
在这种情况下，第一个添加的图标由用户指定，
第二个添加的图标是用户工具的默认图标（如果没有指定图标）。

#figure(
  image("./img/2023-11-12 10.01.png")
)

NOTE:

您可以右键单击工具栏背景，
选中或取消选中工具栏各部分的项目，
从而控制主工具栏中哪些图标可见。

== importing and exporting tool commands

您可以从文件中导入和导出工具命令。这样就可以方便地与同事共享工具命令。

1.

要导出命令，请选择Tools > User Tools > Configure，然后选择User Tools > Export User Tools类别。
您将看到以下对话框。

#figure(
  image("./img/2023-11-12 10.02.png")
)

2.

选中要共享的命令旁边的复选框。

3.

单击导出到文件。

4.

为包含所选用户工具信息的初始化文件 (`*.ini`) 选择位置和文件名。

5.

单击保存。

要导入命令，请在选项对话框中选择用户工具类别，然后单击导入按钮。
浏览另一个 Understand 用户创建的初始化文件，然后单击打开。
在 "导入用户工具 "对话框中，选中您希望在您的 Understand 副本中可用的工具命令旁边的复选框。

== running external commands

工具">"运行命令 "菜单项允许从 Understand 直接运行任何外部命令。
常用的命令包括编译器、配置管理工具和使用 Understand API 编写的 Perl 程序。

运行命令 "对话框如下所示：

要运行命令，请按照以下步骤操作

#figure(
  image("./img/2023-11-12 10.03.png")
)

1.

键入命令或单击 ... 并浏览要运行的文件。
许多 Perl 程序在understand的安装程序被提供。

2.

键入命令所需的任何命令行参数。单击右箭头。

3.

单击 ... 并浏览作为工作目录的目录。

4.

如果希望将输出发送到 Understand 中的窗口，请选中捕捉输出复选框。

5.

如果要运行 Perl 脚本，请选中 Perl API 脚本复选框，如果该脚本是 SciTools 提供的

6.

单击run。如果选中了capture output框，
输出将显示在 Understand 的 "命令窗口"中。
否则，命令将在后台运行。

7.

当命令正在运行时，您可以在 "正在运行的命令 "框中选择该命令，
然后单击 "停止 "结束命令的处理。

命令窗口中使用的字体由选项对话框的用户界面类别中的设置决定，
您可以从菜单中选择tools > options打开该对话框。

在 Unix 系统中，会捕获输出到 stdout 和 stderr 的内容。

== running plugins: graphs and interactive reports

插件是使用其中一个 Understand API 直接与 Understand 交互的脚本。
插件有两种类型：图表和交互式报告。
两者都可以引用整个项目或特定实体。

插件 Git 仓库中提供了示例、模板和文档，网址是 https://github.com/stinb/plugins。

=== APIs

Understand 图形用户界面提供了许多不同的方法来检查您的代码，
但您可能会发现还有其他方法可以访问项目信息。
因此，Understand 提供了多个 API，让您可以查询项目数据。
这些 API 是只读的；它们不会修改项目。

插件和 API 示例、模板和文档可在插件 Git 代码库中获取，
网址是 https://github.com/stinb/plugins。

Perl 和 Python API 最为强大。
如果要编写自己的图形和交互式报告插件，
建议使用 Perl 或 Python API。

以下是可用的 API：

- Perl API： 脚本文件夹中包含许多 Perl API 的示例脚本。选择帮助 > Perl API 文档，了解有关此 API 的更多信息。Understand 使用 Perl v5.34.0。
- Python API： 此 API 使用 Python 3。它提供了从 Python 脚本对 Understand 数据库的完全访问。Understand 的脚本文件夹中包含多个示例。选择 "帮助">"Python API 文档 "获取文档。Understand 使用 Python 3.10.4 版。
- C API： 该 API 可让您在 C 语言程序中访问 Understand 捕捉到的数据。
- Java API： 此 API 更轻量级；不具备其他 API 的全部功能。请参阅 Understand 安装程序的 doc/manuals/java 子目录。
- .NET API： 该 API 由我们的一位用户开发。它是用托管 C++（即 C++/CLI）编写的 .NET SDK 封装程序。编译后，任何以 .NET 框架为目标的编程语言都可以访问它。

=== interactive reports

要安装交互式报告插件，请将文件拖到understand窗口。
例如，使用 Perl API 的插件是 `.upl` 文件，
使用 Python API 的插件是 `.upy` 文件。
示例、模板和文档可从插件 Git 仓库获取，网址是 https://github.com/stinb/plugins。

要运行项目级报告，请从菜单中选择 Project > Interactive Reports > `plugin_name`。

要运行特定于实体的报告，
请右键单击 Understand 中几乎任何地方的实体名称，
然后从上下文菜单中选择`Interactive Reports > plugin_name`

=== plugin graphs

要安装插件图，可将文件拖到understand窗口。
插件图应使用 Perl 或 Python API 创建，
文件扩展名应为 `.upl` 或 `.upy`。
示例、模板和文档可从插件 Git 仓库获取，网址是 https://github.com/stinb/plugins。

要运行项目级图形，请从菜单中选择Graphs > `plugin_name`。
需要注意的是，为大型项目生成图表可能会耗费大量资源。
在某些情况下，生成图形时系统可能会长时间不响应。

要运行特定于实体的图形，请在 Understand 中几乎任何地方选择实体名称，
然后从菜单中选择Graphs > Graphs for entity_name > plugin_name。
或者，右键单击实体，从上下文菜单中选择Graphical Views > plugin_name。

= command line processing



== using the und command line
=== getting help on Und(understand软件)
=== creating a new project
=== converting a legacy(过时的) project
=== adding files to a project
=== removing items from a project
=== getting information about a project and the license
=== modifying project settings
=== importing into a project
=== exporting from a project
=== analyzing a project
=== generating reports
=== generating metrics
=== using CodeCheck
=== running perl scripts
#footnote[Perl是一种高级编程语言，它具有强大的文本处理能力和灵活的正则表达式支持。Perl最初是由Larry
    Wall在1987年开发的，它被广泛应用于Web开发、系统管理、网络编程、数据处理等领域。Perl语言有着丰富的模块和库，可以满足各种不同的编程需求。]
=== creating a list of files
== using the understand command line
== using buildspy(一个功能) to build understand projects

= quick reference
== file menu
== edit menu
== search menu
== view menu
== project menu
== architectures menu
== metrics(指标) menu
== graphs menu
== checks menu
== annotations(注释) menu
== tools menu
== compare menu
== window menu
== help menu

