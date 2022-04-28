.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$3Ui_BQizwAZoU5kTpXBc520RfyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$3Ui_BQizwAZoU5kTpXBc520RfyU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$3Ui_BQizwAZoU5kTpXBc520RfyU;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$3Ui_BQizwAZoU5kTpXBc520RfyU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$3Ui_BQizwAZoU5kTpXBc520RfyU;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$3Ui_BQizwAZoU5kTpXBc520RfyU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
