.class public final synthetic Lcom/miui/home/launcher/widget/device/-$$Lambda$LargeScreenMIUIWidgetDeviceAdapter$k5FJJZWmvqiZiIWjAJ_gsBceaa4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$LargeScreenMIUIWidgetDeviceAdapter$k5FJJZWmvqiZiIWjAJ_gsBceaa4;->f$0:Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$LargeScreenMIUIWidgetDeviceAdapter$k5FJJZWmvqiZiIWjAJ_gsBceaa4;->f$0:Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->lambda$attachPreviewLayer$1(Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;Landroid/graphics/Bitmap;)V

    return-void
.end method
