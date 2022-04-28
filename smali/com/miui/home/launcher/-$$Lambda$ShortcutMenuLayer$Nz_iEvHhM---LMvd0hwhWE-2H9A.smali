.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;

.field private final synthetic f$2:[F

.field private final synthetic f$3:Z

.field private final synthetic f$4:[I

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$2:[F

    iput-boolean p4, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$3:Z

    iput-object p5, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$4:[I

    iput p6, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$2:[F

    iget-boolean v3, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$3:Z

    iget-object v4, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$4:[I

    iget v5, p0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;->f$5:I

    move-object v6, p1

    check-cast v6, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$1(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[IILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    return-void
.end method
