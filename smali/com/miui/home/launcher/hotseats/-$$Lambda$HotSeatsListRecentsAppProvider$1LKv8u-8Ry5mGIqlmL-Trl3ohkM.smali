.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LKv8u-8Ry5mGIqlmL-Trl3ohkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LKv8u-8Ry5mGIqlmL-Trl3ohkM;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LKv8u-8Ry5mGIqlmL-Trl3ohkM;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$removeCache$11(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
