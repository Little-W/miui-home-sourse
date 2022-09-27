.class public Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "FreeStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtzGadgetInfo"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field public preview:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/16 v0, 0x9

    .line 32
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->itemType:I

    return-void
.end method
