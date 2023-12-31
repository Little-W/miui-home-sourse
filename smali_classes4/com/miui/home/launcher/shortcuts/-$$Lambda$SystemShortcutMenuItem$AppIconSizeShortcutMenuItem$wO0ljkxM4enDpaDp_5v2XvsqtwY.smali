.class public final synthetic Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$wO0ljkxM4enDpaDp_5v2XvsqtwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$wO0ljkxM4enDpaDp_5v2XvsqtwY;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$wO0ljkxM4enDpaDp_5v2XvsqtwY;->f$0:Landroid/content/ComponentName;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;->lambda$getOnClickListener$0(Landroid/content/ComponentName;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
