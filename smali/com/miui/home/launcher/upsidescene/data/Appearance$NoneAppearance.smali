.class public Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;
.super Lcom/miui/home/launcher/upsidescene/data/Appearance;
.source "Appearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Appearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoneAppearance"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, v0, p1, v1}, Lcom/miui/home/launcher/upsidescene/data/Appearance;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lcom/miui/home/launcher/upsidescene/data/Appearance$1;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
