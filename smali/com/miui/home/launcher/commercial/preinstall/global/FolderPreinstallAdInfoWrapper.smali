.class public Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
.super Ljava/lang/Object;
.source "FolderPreinstallAdInfoWrapper.java"


# instance fields
.field private final mOriginalAd:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->mOriginalAd:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    return-void
.end method


# virtual methods
.method public getIconUri()Landroid/net/Uri;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->mOriginalAd:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 34
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getOriginalAd()Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->mOriginalAd:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->mOriginalAd:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->mOriginalAd:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
