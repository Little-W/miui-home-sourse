.class Lcom/miui/maml/data/Variables$ValueInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 129
    iput p2, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [D

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, [D

    .line 140
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_4

    const-wide/16 v3, 0x0

    .line 141
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    instance-of v1, v0, [F

    if-eqz v1, :cond_1

    .line 143
    check-cast v0, [F

    .line 144
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_4

    const/4 v1, 0x0

    .line 145
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_1
    instance-of v1, v0, [I

    if-eqz v1, :cond_2

    .line 147
    check-cast v0, [I

    move v1, v2

    .line 148
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 149
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    :cond_2
    instance-of v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 151
    check-cast v0, [Ljava/lang/Object;

    .line 152
    :goto_3
    array-length v1, v0

    if-ge v2, v1, :cond_4

    .line 153
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 134
    iget p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method
