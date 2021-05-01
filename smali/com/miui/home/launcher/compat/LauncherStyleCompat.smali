.class public abstract Lcom/miui/home/launcher/compat/LauncherStyleCompat;
.super Ljava/lang/Object;
.source "LauncherStyleCompat.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/compat/LauncherStyleCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherStyleCompat;
    .locals 2

    .line 13
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    if-nez v1, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 18
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_10:Z

    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/compat/LauncherStyleCompatV10;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/compat/LauncherStyleCompatV11;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    .line 24
    :cond_2
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->sInstance:Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract getLauncherDialogPaddingBottom()I
.end method

.method public abstract getLauncherDialogPaddingTop()I
.end method

.method public abstract getLauncherMenuItemMinHeight()I
.end method

.method public abstract getLauncherMenuItemTitleSize()I
.end method
