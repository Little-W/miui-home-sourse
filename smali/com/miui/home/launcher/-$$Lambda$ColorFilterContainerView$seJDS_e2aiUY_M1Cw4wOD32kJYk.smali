.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ColorFilterContainerView;

.field private final synthetic f$1:Ljava/lang/Integer;

.field private final synthetic f$2:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ColorFilterContainerView;Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;->f$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;->f$2:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;->f$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;->f$1:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;->f$2:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->lambda$setupColorFilterView$0$ColorFilterContainerView(Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Landroid/view/View;)V

    return-void
.end method
