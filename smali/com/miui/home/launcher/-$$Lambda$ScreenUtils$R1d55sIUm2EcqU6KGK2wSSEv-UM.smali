.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(IILandroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;->f$0:I

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;->f$2:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;->f$0:I

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;->f$2:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/ScreenUtils;->lambda$insertNewScreen$0(IILandroid/content/ContentResolver;Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
