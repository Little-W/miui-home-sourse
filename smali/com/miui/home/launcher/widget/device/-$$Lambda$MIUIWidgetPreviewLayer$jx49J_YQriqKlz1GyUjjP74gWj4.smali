.class public final synthetic Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;->f$1:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->lambda$updatePreviewPosition$0(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V

    return-void
.end method
