.class public Lcom/miui/launcher/utils/ToggleManagerUtils;
.super Ljava/lang/Object;
.source "ToggleManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;
    }
.end annotation


# static fields
.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_WIFI:I = 0xf

.field private static sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sToggleChangedListener:Lmiui/app/ToggleManager$OnToggleChangedListener;

.field private static sToggleManager:Lmiui/app/ToggleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sListeners:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/miui/launcher/utils/ToggleManagerUtils$1;

    invoke-direct {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils$1;-><init>()V

    sput-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sToggleChangedListener:Lmiui/app/ToggleManager$OnToggleChangedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addToggleListener(Landroid/content/Context;Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/miui/launcher/utils/ToggleManagerUtils;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v1, :cond_0

    .line 59
    invoke-static {p0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getToggleManager(Landroid/content/Context;)Lmiui/app/ToggleManager;

    .line 61
    :cond_0
    sget-object p0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lmiui/app/ToggleManager;->getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getGeneralImage(I)I
    .locals 0

    .line 94
    invoke-static {p0}, Lmiui/app/ToggleManager;->getGeneralImage(I)I

    move-result p0

    return p0
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getName(I)I
    .locals 0

    .line 90
    invoke-static {p0}, Lmiui/app/ToggleManager;->getName(I)I

    move-result p0

    return p0
.end method

.method public static getStatus(I)Z
    .locals 0

    .line 98
    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result p0

    return p0
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getToggleIdFromString(Ljava/lang/String;)I
    .locals 0

    .line 82
    invoke-static {p0}, Lmiui/app/ToggleManager;->getToggleIdFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getToggleManager(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .locals 2

    .line 47
    sget-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/miui/launcher/utils/ToggleManagerUtils;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v1, :cond_0

    .line 49
    invoke-static {p0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object p0

    sput-object p0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sToggleManager:Lmiui/app/ToggleManager;

    .line 50
    sget-object p0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sToggleManager:Lmiui/app/ToggleManager;

    sget-object v1, Lcom/miui/launcher/utils/ToggleManagerUtils;->sToggleChangedListener:Lmiui/app/ToggleManager$OnToggleChangedListener;

    invoke-virtual {p0, v1}, Lmiui/app/ToggleManager;->setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    .line 52
    :cond_0
    sget-object p0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sToggleManager:Lmiui/app/ToggleManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getToggleStringFromId(I)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-static {p0}, Lmiui/app/ToggleManager;->getToggleStringFromId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 110
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static removeToggleListener(Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V
    .locals 4

    .line 66
    sget-object v0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/miui/launcher/utils/ToggleManagerUtils;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 68
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;

    if-ne v3, p0, :cond_0

    .line 70
    sget-object p0, Lcom/miui/launcher/utils/ToggleManagerUtils;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    return-void

    .line 74
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
