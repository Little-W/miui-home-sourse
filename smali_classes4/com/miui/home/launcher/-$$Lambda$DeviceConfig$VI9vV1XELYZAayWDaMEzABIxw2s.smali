.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$VI9vV1XELYZAayWDaMEzABIxw2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$VI9vV1XELYZAayWDaMEzABIxw2s;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$VI9vV1XELYZAayWDaMEzABIxw2s;->f$0:I

    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$3(ILandroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method
