.class public final synthetic Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$bjL7Jp6_RicigYxJdBVNLMk4aA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

.field private final synthetic f$1:Landroid/view/View$OnClickListener;

.field private final synthetic f$2:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;Landroid/view/View$OnClickListener;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$bjL7Jp6_RicigYxJdBVNLMk4aA8;->f$0:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    iput-object p2, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$bjL7Jp6_RicigYxJdBVNLMk4aA8;->f$1:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$bjL7Jp6_RicigYxJdBVNLMk4aA8;->f$2:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$bjL7Jp6_RicigYxJdBVNLMk4aA8;->f$0:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$bjL7Jp6_RicigYxJdBVNLMk4aA8;->f$1:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$bjL7Jp6_RicigYxJdBVNLMk4aA8;->f$2:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->lambda$bindShortcutMenuItem$0$IconAndTitleShortcutMenuItemContainer(Landroid/view/View$OnClickListener;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method
