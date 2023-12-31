.class public final synthetic Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$U_yz2urxwQZcZQjarU8eOPzrO1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$U_yz2urxwQZcZQjarU8eOPzrO1I;->f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    return-void
.end method


# virtual methods
.method public final onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$U_yz2urxwQZcZQjarU8eOPzrO1I;->f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->lambda$new$0$RelayIconInRecents([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method
