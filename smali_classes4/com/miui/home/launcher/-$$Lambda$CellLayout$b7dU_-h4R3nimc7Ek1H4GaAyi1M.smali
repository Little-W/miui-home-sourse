.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$b7dU_-h4R3nimc7Ek1H4GaAyi1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$b7dU_-h4R3nimc7Ek1H4GaAyi1M;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$b7dU_-h4R3nimc7Ek1H4GaAyi1M;->f$0:Z

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$quickShowOrHideAllShortcutsCheckBox$2(ZLcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
