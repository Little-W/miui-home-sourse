.class Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

    iput-object p2, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigFailed()V
    .locals 2

    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;->onConfigFailed()V

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onConfigSucceed()V
    .locals 2

    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;->onConfigSucceed()V

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
