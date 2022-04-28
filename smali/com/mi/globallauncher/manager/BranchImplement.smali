.class public Lcom/mi/globallauncher/manager/BranchImplement;
.super Ljava/lang/Object;
.source "BranchImplement.java"

# interfaces
.implements Lcom/mi/globallauncher/manager/BranchInterface;


# static fields
.field private static volatile instance:Lcom/mi/globallauncher/manager/BranchImplement;


# instance fields
.field private application:Landroid/app/Application;

.field private isDebug:Z

.field private final privacyInit:Lcom/mi/globallauncher/privacy/PrivacyInit;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/mi/globallauncher/privacy/PrivacyInit;

    invoke-direct {v0}, Lcom/mi/globallauncher/privacy/PrivacyInit;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchImplement;->privacyInit:Lcom/mi/globallauncher/privacy/PrivacyInit;

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/manager/BranchImplement;
    .locals 2

    .line 24
    sget-object v0, Lcom/mi/globallauncher/manager/BranchImplement;->instance:Lcom/mi/globallauncher/manager/BranchImplement;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/mi/globallauncher/manager/BranchImplement;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/BranchImplement;->instance:Lcom/mi/globallauncher/manager/BranchImplement;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/mi/globallauncher/manager/BranchImplement;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/BranchImplement;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/BranchImplement;->instance:Lcom/mi/globallauncher/manager/BranchImplement;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/BranchImplement;->instance:Lcom/mi/globallauncher/manager/BranchImplement;

    return-object v0
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchImplement;->application:Landroid/app/Application;

    return-object v0
.end method

.method public initPrivacy(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchImplement;->privacyInit:Lcom/mi/globallauncher/privacy/PrivacyInit;

    invoke-virtual {v0, p1, p2}, Lcom/mi/globallauncher/privacy/PrivacyInit;->internationalInitMethod(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    return-void
.end method

.method public isDebug()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug:Z

    return v0
.end method

.method public setApplication(Landroid/app/Application;Z)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchImplement;->application:Landroid/app/Application;

    .line 41
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    .line 42
    iput-boolean p2, p0, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug:Z

    return-void
.end method
