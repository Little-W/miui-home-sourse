.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$8OxjhgR8XQX7uIkDGDjMweuAwrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$8OxjhgR8XQX7uIkDGDjMweuAwrc;->f$0:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$8OxjhgR8XQX7uIkDGDjMweuAwrc;->f$0:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$0(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object p1

    return-object p1
.end method
