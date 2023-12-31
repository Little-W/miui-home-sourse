.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$StringCache$BfF7qI6b-aRgp8oeOdHav9nPl9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$StringCache$BfF7qI6b-aRgp8oeOdHav9nPl9c;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$StringCache$BfF7qI6b-aRgp8oeOdHav9nPl9c;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$StringCache$BfF7qI6b-aRgp8oeOdHav9nPl9c;->f$0:Landroid/content/Context;

    iget p0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$StringCache$BfF7qI6b-aRgp8oeOdHav9nPl9c;->f$1:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/allapps/StringCache;->lambda$getUpdatableEnterpriseSting$0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
