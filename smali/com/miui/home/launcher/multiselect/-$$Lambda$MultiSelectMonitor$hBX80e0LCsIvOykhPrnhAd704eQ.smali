.class public final synthetic Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$hBX80e0LCsIvOykhPrnhAd704eQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$hBX80e0LCsIvOykhPrnhAd704eQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$hBX80e0LCsIvOykhPrnhAd704eQ;

    invoke-direct {v0}, Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$hBX80e0LCsIvOykhPrnhAd704eQ;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$hBX80e0LCsIvOykhPrnhAd704eQ;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$hBX80e0LCsIvOykhPrnhAd704eQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->lambda$unregisterEventBusHandler$492(Ljava/lang/Object;)V

    return-void
.end method
