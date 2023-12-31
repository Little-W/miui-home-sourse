.class public Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;
.super Ljava/lang/Object;
.source "SecurityManagerWrapper.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSM:Lmiui/security/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mSM:Lmiui/security/SecurityManager;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mSM:Lmiui/security/SecurityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mSM:Lmiui/security/SecurityManager;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v2, v3}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const/4 v3, 0x1

    const-string v4, "access_control_lock_mode"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->mSM:Lmiui/security/SecurityManager;

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v0, p1}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method
