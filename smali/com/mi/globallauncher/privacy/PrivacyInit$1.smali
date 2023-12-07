.class Lcom/mi/globallauncher/privacy/PrivacyInit$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/privacy/PrivacyInit;->internationalInitMethod(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/privacy/PrivacyInit;

.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$privacyInitCallBack:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/privacy/PrivacyInit;Landroid/os/Handler;Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$1;->this$0:Lcom/mi/globallauncher/privacy/PrivacyInit;

    iput-object p3, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$1;->val$application:Landroid/app/Application;

    iput-object p4, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$1;->val$privacyInitCallBack:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "ResetClient"

    const-string v0, "internationalInitMethod: onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$1;->this$0:Lcom/mi/globallauncher/privacy/PrivacyInit;

    iget-object v0, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$1;->val$application:Landroid/app/Application;

    iget-object p0, p0, Lcom/mi/globallauncher/privacy/PrivacyInit$1;->val$privacyInitCallBack:Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;

    invoke-static {p1, v0, p0}, Lcom/mi/globallauncher/privacy/PrivacyInit;->access$000(Lcom/mi/globallauncher/privacy/PrivacyInit;Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    return-void
.end method
