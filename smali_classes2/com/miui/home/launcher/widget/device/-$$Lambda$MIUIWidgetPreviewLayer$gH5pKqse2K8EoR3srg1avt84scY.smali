.class public final synthetic Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$gH5pKqse2K8EoR3srg1avt84scY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$gH5pKqse2K8EoR3srg1avt84scY;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$gH5pKqse2K8EoR3srg1avt84scY;->f$0:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->lambda$attachWallpaper$1$MIUIWidgetPreviewLayer(Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
