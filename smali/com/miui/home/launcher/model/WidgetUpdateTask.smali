.class public Lcom/miui/home/launcher/model/WidgetUpdateTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "WidgetUpdateTask.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/model/WidgetUpdateTask;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private static isWidgetEnable(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 2

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 3

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 27
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 28
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 31
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/model/WidgetUpdateTask;->mPackageName:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 43
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 45
    invoke-static {v0}, Lcom/miui/home/launcher/model/WidgetUpdateTask;->isWidgetEnable(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 46
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_5
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/model/WidgetUpdateTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method
