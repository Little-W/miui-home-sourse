.class Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$1;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "FreeButtonInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getBitmapDrawable(Lmiui/util/FileAccessable;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$1;->this$0:Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    invoke-direct {p0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 294
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$1;->setAntiAlias(Z)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo$1;->setFilterBitmap(Z)V

    return-void
.end method
