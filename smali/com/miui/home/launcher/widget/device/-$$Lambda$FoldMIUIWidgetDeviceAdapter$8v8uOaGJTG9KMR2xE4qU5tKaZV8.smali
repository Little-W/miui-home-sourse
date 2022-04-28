.class public final synthetic Lcom/miui/home/launcher/widget/device/-$$Lambda$FoldMIUIWidgetDeviceAdapter$8v8uOaGJTG9KMR2xE4qU5tKaZV8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$FoldMIUIWidgetDeviceAdapter$8v8uOaGJTG9KMR2xE4qU5tKaZV8;->f$0:Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/-$$Lambda$FoldMIUIWidgetDeviceAdapter$8v8uOaGJTG9KMR2xE4qU5tKaZV8;->f$0:Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->lambda$attachPreviewLayer$0(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
