.class public Lcom/mi/globallauncher/DailyJobService;
.super Landroid/app/job/JobService;


# static fields
.field public static final JOB_SCHEDULER_UPDATE_ID:I = 0x64

.field public static final JOB_SCHEDULER_UPDATE_INTERVAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "AppCategoryInfoUpdate"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelUpdateService(Landroid/app/job/JobScheduler;)V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    const-string p0, "AppCategoryInfoUpdate"

    const-string/jumbo v0, "update service canceled"

    invoke-static {p0, v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setupUpdateService(Landroid/content/Context;Landroid/app/job/JobScheduler;)V
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/mi/globallauncher/DailyJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    sget-object p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    invoke-virtual {p0}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->fetchRemoteConfig()V

    const/4 p0, 0x0

    return p0
.end method
