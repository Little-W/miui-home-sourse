.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$Hyz-QyEdr0Gl3TDDGpTymoZjlhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$Hyz-QyEdr0Gl3TDDGpTymoZjlhg;->f$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$Hyz-QyEdr0Gl3TDDGpTymoZjlhg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$Hyz-QyEdr0Gl3TDDGpTymoZjlhg;->f$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget p0, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$Hyz-QyEdr0Gl3TDDGpTymoZjlhg;->f$1:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->lambda$selectColor$1(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V

    return-void
.end method
