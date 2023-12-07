.class public final synthetic Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;->f$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p3, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;->f$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressShortcutInfo$jqrYRMk4Qu8wTBCN0fSpmql_bYk;->f$2:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->lambda$getFillShortcutIconConsumer$0$ProgressShortcutInfo(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
