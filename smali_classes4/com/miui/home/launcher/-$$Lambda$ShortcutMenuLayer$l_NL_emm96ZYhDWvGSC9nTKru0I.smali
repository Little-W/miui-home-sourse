.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;->f$1:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$2$ShortcutMenuLayer(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    return-void
.end method
