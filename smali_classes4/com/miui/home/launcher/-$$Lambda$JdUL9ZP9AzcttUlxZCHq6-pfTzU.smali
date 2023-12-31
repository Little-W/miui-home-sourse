.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;

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

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
