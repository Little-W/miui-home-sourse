.class public final synthetic Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$oBx2EfQJ_LOr8HrUh0VhwBnhgkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$oBx2EfQJ_LOr8HrUh0VhwBnhgkk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$oBx2EfQJ_LOr8HrUh0VhwBnhgkk;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$oBx2EfQJ_LOr8HrUh0VhwBnhgkk;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$oBx2EfQJ_LOr8HrUh0VhwBnhgkk;->INSTANCE:Lcom/miui/home/launcher/util/-$$Lambda$DimenUtils1X$oBx2EfQJ_LOr8HrUh0VhwBnhgkk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/DimenUtils1X;->lambda$oBx2EfQJ_LOr8HrUh0VhwBnhgkk(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
