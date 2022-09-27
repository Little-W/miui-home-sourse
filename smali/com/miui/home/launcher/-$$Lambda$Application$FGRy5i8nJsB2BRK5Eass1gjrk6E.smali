.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/launcher/Application;->lambda$loadFeedModules$2(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
