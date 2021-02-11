.class Ljava8/util/stream/Collectors$1OptionalBox;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/Collectors;->reducing(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionalBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field present:Z

.field final synthetic val$op:Ljava8/util/function/BinaryOperator;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1056
    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->val$op:Ljava8/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1057
    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1058
    iput-boolean p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->present:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1062
    iget-boolean v0, p0, Ljava8/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Ljava8/util/stream/Collectors$1OptionalBox;->val$op:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1066
    :cond_0
    iput-object p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1067
    iput-boolean p1, p0, Ljava8/util/stream/Collectors$1OptionalBox;->present:Z

    :goto_0
    return-void
.end method
