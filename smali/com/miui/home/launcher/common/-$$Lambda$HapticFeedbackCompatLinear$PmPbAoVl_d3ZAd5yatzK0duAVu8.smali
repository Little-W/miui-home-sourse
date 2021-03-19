.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$PmPbAoVl_d3ZAd5yatzK0duAVu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$PmPbAoVl_d3ZAd5yatzK0duAVu8;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$PmPbAoVl_d3ZAd5yatzK0duAVu8;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->lambda$performEnterOrCreateFolder$5(Landroid/view/View;)V

    return-void
.end method
