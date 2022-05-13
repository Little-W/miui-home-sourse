.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/PairShortcutInfo;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;->f$0:Lcom/miui/home/launcher/PairShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;->f$0:Lcom/miui/home/launcher/PairShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$PairShortcutInfo$GQfaVAjXDJoQza4r5ja-sXxwnm0;->f$1:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->lambda$getPairIconAsync$0(Lcom/miui/home/launcher/PairShortcutInfo;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
