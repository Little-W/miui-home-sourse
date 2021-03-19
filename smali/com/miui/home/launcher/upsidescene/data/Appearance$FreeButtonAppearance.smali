.class public Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;
.super Lcom/miui/home/launcher/upsidescene/data/Appearance;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Appearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreeButtonAppearance"
.end annotation


# instance fields
.field mFreeButton:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skins/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lcom/miui/home/launcher/upsidescene/data/Appearance$1;)V

    .line 109
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    return-void
.end method


# virtual methods
.method public getFreeButtonInfo()Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->mFreeButton:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->mPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lmiui/util/FileAccessable$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getFreeButton(Lmiui/util/FileAccessable;)Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->mFreeButton:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->mFreeButton:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
