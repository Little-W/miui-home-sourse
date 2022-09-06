.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$3dqVLM8MsoxrPZQm9W0j4ifbeks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$3dqVLM8MsoxrPZQm9W0j4ifbeks;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$3dqVLM8MsoxrPZQm9W0j4ifbeks;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->lambda$setMamlIconPresent$1(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
