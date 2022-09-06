.class public final synthetic Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$l4ks1JJjBxQvKhhpKxjo6Oe6VDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$l4ks1JJjBxQvKhhpKxjo6Oe6VDU;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iput-boolean p2, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$l4ks1JJjBxQvKhhpKxjo6Oe6VDU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$l4ks1JJjBxQvKhhpKxjo6Oe6VDU;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$l4ks1JJjBxQvKhhpKxjo6Oe6VDU;->f$1:Z

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->lambda$attachWallpaper$2(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method
