.class public final synthetic Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$jQgL0qWzgt-INUuTd5RP_4_DUPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$jQgL0qWzgt-INUuTd5RP_4_DUPY;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$jQgL0qWzgt-INUuTd5RP_4_DUPY;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$jQgL0qWzgt-INUuTd5RP_4_DUPY;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$jQgL0qWzgt-INUuTd5RP_4_DUPY;->f$1:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;->lambda$getOnClickListener$1(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Integer;)V

    return-void
.end method
