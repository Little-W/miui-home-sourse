.class public final synthetic Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$jlqa8he2mFO7ay5Q1LPPMeNdMz0;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$onUpgrade$0$MaMlWidgetView(Ljava/lang/String;I)V

    return-void
.end method
