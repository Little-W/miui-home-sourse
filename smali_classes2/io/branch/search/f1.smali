.class public final Lio/branch/search/f1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/f1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/f1$a;


# instance fields
.field public final a:Lio/branch/search/m0;

.field public final b:Lio/branch/search/e5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/e5<",
            "Lio/branch/search/BranchLocalError;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/f1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/f1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m0;Lio/branch/search/e5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m0;",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchLocalError;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "virtualRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m0;

    iput-object p2, p0, Lio/branch/search/f1;->b:Lio/branch/search/e5;

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/e5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/branch/search/e5<",
            "Lio/branch/search/BranchLocalError;",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/f1;->b:Lio/branch/search/e5;

    return-object p0
.end method

.method public final b()Lio/branch/search/m0;
    .locals 0

    iget-object p0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m0;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/f1;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/f1;

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m0;

    iget-object v1, p1, Lio/branch/search/f1;->a:Lio/branch/search/m0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/f1;->b:Lio/branch/search/e5;

    iget-object p1, p1, Lio/branch/search/f1;->b:Lio/branch/search/e5;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/branch/search/f1;->a:Lio/branch/search/m0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/f1;->b:Lio/branch/search/e5;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(virtualRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/f1;->a:Lio/branch/search/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/f1;->b:Lio/branch/search/e5;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
