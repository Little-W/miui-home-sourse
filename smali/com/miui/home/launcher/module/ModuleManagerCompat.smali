.class public Lcom/miui/home/launcher/module/ModuleManagerCompat;
.super Ljava/lang/Object;
.source "ModuleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/module/ModuleManagerCompat$Holder;,
        Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;
    }
.end annotation


# instance fields
.field private final mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    :try_start_0
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;-><init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V

    invoke-virtual {v0, v1}, Lmiui/module/ModuleManager;->setModuleLoadListener(Lmiui/module/ModuleManager$ModuleLoadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.ModuleManager"

    const-string v2, "ModuleManagerCompat"

    .line 59
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/module/ModuleManagerCompat$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/module/ModuleManagerCompat;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/module/ModuleManagerCompat;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/module/ModuleManagerCompat;Landroid/app/Application;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->makeMiuiHomeLoadClassFirst(Landroid/app/Application;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;
    .locals 1

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat$Holder;->access$100()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$makeMiuiHomeLoadClassFirst$0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 88
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private makeMiuiHomeLoadClassFirst(Landroid/app/Application;)V
    .locals 4

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/module/ClassLoaderCompat;->getDexPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {v0}, Lcom/miui/home/launcher/module/DexPathListCompat;->getDexElements(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Launcher.ModuleManager"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 85
    new-instance v2, Lcom/miui/home/launcher/module/-$$Lambda$ModuleManagerCompat$DozrQDm9H3sFXlkasD4ywJPyCzQ;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/module/-$$Lambda$ModuleManagerCompat$DozrQDm9H3sFXlkasD4ywJPyCzQ;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-string v1, "Launcher.ModuleManager"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Launcher.ModuleManager"

    const-string v1, "element is null"

    .line 95
    goto :goto_0

    :cond_1
    const-string v0, "Launcher.ModuleManager"

    const-string v1, "dexPathList is null"

    .line 98
    :cond_2
    :goto_0
    const-string v0, "Launcher.ModuleManager"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classLoader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-void
.end method


# virtual methods
.method public isModuleLoadSuccess(Ljava/lang/String;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_SUCCESS:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs loadModules([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 64
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 68
    iget-object v3, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_PROCESSING:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    :try_start_0
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/module/ModuleManager;->loadModules([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Launcher.ModuleManager"

    const-string v1, "loadModules"

    .line 73
    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method
