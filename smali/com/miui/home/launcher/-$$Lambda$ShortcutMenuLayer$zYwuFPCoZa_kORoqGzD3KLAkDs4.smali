.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$zYwuFPCoZa_kORoqGzD3KLAkDs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$zYwuFPCoZa_kORoqGzD3KLAkDs4;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$zYwuFPCoZa_kORoqGzD3KLAkDs4;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$zYwuFPCoZa_kORoqGzD3KLAkDs4;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$zYwuFPCoZa_kORoqGzD3KLAkDs4;->f$1:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$139(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    return-void
.end method
