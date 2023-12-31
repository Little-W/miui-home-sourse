.class public Lcom/miui/home/launcher/SystemAppStubConfig;
.super Ljava/lang/Object;
.source "SystemAppStubConfig.java"


# instance fields
.field private mMetaDate:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/miui/home/launcher/SystemAppStubConfig;->mMetaDate:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public isMiuiAppStub()Z
    .locals 2

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/SystemAppStubConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "miui_app_stub"

    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method
