.class public Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;
.super Ljava/lang/Object;


# instance fields
.field private final developmentPlatform:Ljava/lang/String;

.field private final developmentPlatformVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.firebase.crashlytics.unity_version"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Unity"

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;->developmentPlatform:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;->developmentPlatformVersion:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Editor version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;->developmentPlatformVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;->developmentPlatform:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;->developmentPlatformVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDevelopmentPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;->developmentPlatform:Ljava/lang/String;

    return-object p0
.end method

.method public getDevelopmentPlatformVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;->developmentPlatformVersion:Ljava/lang/String;

    return-object p0
.end method
