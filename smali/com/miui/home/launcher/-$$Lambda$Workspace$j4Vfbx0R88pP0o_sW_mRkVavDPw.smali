.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$j4Vfbx0R88pP0o_sW_mRkVavDPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$j4Vfbx0R88pP0o_sW_mRkVavDPw;->f$0:Lcom/miui/home/launcher/Workspace;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$j4Vfbx0R88pP0o_sW_mRkVavDPw;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$j4Vfbx0R88pP0o_sW_mRkVavDPw;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$j4Vfbx0R88pP0o_sW_mRkVavDPw;->f$0:Lcom/miui/home/launcher/Workspace;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$j4Vfbx0R88pP0o_sW_mRkVavDPw;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$j4Vfbx0R88pP0o_sW_mRkVavDPw;->f$2:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Workspace;->lambda$insertNewScreen$10(Lcom/miui/home/launcher/Workspace;IILjava/lang/Long;)V

    return-void
.end method
