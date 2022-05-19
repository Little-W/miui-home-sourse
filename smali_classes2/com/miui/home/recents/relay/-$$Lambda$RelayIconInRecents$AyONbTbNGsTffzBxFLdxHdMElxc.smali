.class public final synthetic Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$AyONbTbNGsTffzBxFLdxHdMElxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$AyONbTbNGsTffzBxFLdxHdMElxc;->f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$AyONbTbNGsTffzBxFLdxHdMElxc;->f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-static {v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->lambda$registerRelayIconCallback$1(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    return-void
.end method
