.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkSystemUIFsgVersion$10()V

    return-void
.end method
