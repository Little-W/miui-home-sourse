.class public final Lcom/miui/home/launcher/defaultlayout/NodeFactory;
.super Ljava/lang/Object;
.source "NodeFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeFactory.kt\ncom/miui/home/launcher/defaultlayout/NodeFactory\n*L\n1#1,122:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/defaultlayout/NodeFactory;

.field private static mNodeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/defaultlayout/Node;",
            ">;"
        }
    .end annotation
.end field

.field private static mSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;

    invoke-direct {v0}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->INSTANCE:Lcom/miui/home/launcher/defaultlayout/NodeFactory;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mNodeList:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getInstalledPackages()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "Application.getInstance(\u2026r.getInstalledPackages(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 113
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final createNode(Ljava/lang/String;)Lcom/miui/home/launcher/defaultlayout/Node;
    .locals 0

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p0, "no_cmcc"

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "include"

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/IncludeNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/IncludeNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_2
    const-string p0, "default"

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/ScreenNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ScreenNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_3
    const-string p0, "clock3x4"

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "clock2x4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "clock2x2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "clock1x4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "favorite"

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/ShortcutNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ShortcutNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_8
    const-string p0, "no_meitu"

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :sswitch_9
    const-string p0, "command"

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/CommandNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/CommandNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_a
    const-string p0, "google_original_search"

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_b
    const-string p0, "google_search"

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :sswitch_c
    const-string p0, "meitu"

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :sswitch_d
    const-string p0, "installed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :sswitch_e
    const-string p0, "maml"

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/MamlNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/MamlNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_f
    const-string p0, "cmcc"

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :sswitch_10
    const-string p0, "shortcut"

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/UriShortcutNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/UriShortcutNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_11
    const-string p0, "toggle"

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/ToggleNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ToggleNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_12
    const-string p0, "search"

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 77
    :goto_0
    new-instance p0, Lcom/miui/home/launcher/defaultlayout/GadgetNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/GadgetNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto/16 :goto_3

    :sswitch_13
    const-string p0, "folder_2x2_9"

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/Folder_2x2_9_Node;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Folder_2x2_9_Node;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto :goto_3

    :sswitch_14
    const-string p0, "folder_2x2_4"

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/Folder_2x2_4_Node;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Folder_2x2_4_Node;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto :goto_3

    :sswitch_15
    const-string p0, "gadget"

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/OldMamlNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/OldMamlNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto :goto_3

    :sswitch_16
    const-string p0, "folder"

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/FolderNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/FolderNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto :goto_3

    :sswitch_17
    const-string p0, "appwidget"

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto :goto_3

    :sswitch_18
    const-string p0, "favorites"

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto :goto_3

    :sswitch_19
    const-string p0, "no_installed"

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 83
    :goto_1
    new-instance p0, Lcom/miui/home/launcher/defaultlayout/OtherNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/OtherNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    goto :goto_3

    .line 84
    :cond_1
    :goto_2
    new-instance p0, Lcom/miui/home/launcher/defaultlayout/OtherNode;

    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/OtherNode;-><init>()V

    check-cast p0, Lcom/miui/home/launcher/defaultlayout/Node;

    :goto_3
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79853d84 -> :sswitch_19
        -0x6a6895a9 -> :sswitch_18
        -0x69cd085b -> :sswitch_17
        -0x4ba2e392 -> :sswitch_16
        -0x4ab6ebb4 -> :sswitch_15
        -0x36e61ff0 -> :sswitch_14
        -0x36e61feb -> :sswitch_13
        -0x36059a58 -> :sswitch_12
        -0x33c144ac -> :sswitch_11
        -0x146a23ba -> :sswitch_10
        0x2ea64a -> :sswitch_f
        0x330633 -> :sswitch_e
        0x1bb377a -> :sswitch_d
        0x62f8412 -> :sswitch_c
        0x1994426e -> :sswitch_b
        0x275c7dd0 -> :sswitch_a
        0x38a5df4b -> :sswitch_9
        0x3ae0e014 -> :sswitch_8
        0x3ea1c99c -> :sswitch_7
        0x4043c7df -> :sswitch_6
        0x4043cb9e -> :sswitch_5
        0x4043cba0 -> :sswitch_4
        0x4043cf61 -> :sswitch_3
        0x5c13d641 -> :sswitch_2
        0x73c954a8 -> :sswitch_1
        0x7dc0c208 -> :sswitch_0
    .end sparse-switch
.end method

.method public final destroy()V
    .locals 0

    .line 119
    sget-object p0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mSet:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 120
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mNodeList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getNode(Ljava/lang/String;)Lcom/miui/home/launcher/defaultlayout/Node;
    .locals 1

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mNodeList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/defaultlayout/Node;

    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->createNode(Ljava/lang/String;)Lcom/miui/home/launcher/defaultlayout/Node;

    move-result-object v0

    .line 51
    sget-object p0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mNodeList:Ljava/util/HashMap;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public final isInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 103
    sget-object v0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->getInstalledPackages()Ljava/util/HashSet;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mSet:Ljava/util/HashSet;

    .line 106
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->mSet:Ljava/util/HashSet;

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final obtainGadgetID(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "clock3x4"

    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_1
    const-string p0, "clock2x4"

    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_2
    const-string p0, "clock2x2"

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string p0, "clock1x4"

    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_4
    const-string p0, "google_search"

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xd

    goto :goto_1

    :sswitch_5
    const-string p0, "search"

    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_5
        0x1994426e -> :sswitch_4
        0x4043c7df -> :sswitch_3
        0x4043cb9e -> :sswitch_2
        0x4043cba0 -> :sswitch_1
        0x4043cf61 -> :sswitch_0
    .end sparse-switch
.end method
