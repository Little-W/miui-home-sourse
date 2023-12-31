.class public interface abstract Lcom/miui/expose/utils/ParameterTypes;
.super Ljava/lang/Object;
.source "ParameterTypes.java"


# static fields
.field public static final EMPTY:Lcom/miui/expose/utils/ParameterTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/miui/expose/utils/ParameterTypes$1;

    invoke-direct {v0}, Lcom/miui/expose/utils/ParameterTypes$1;-><init>()V

    sput-object v0, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    return-void
.end method

.method public static synthetic lambda$of$0([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 0

    return-object p0
.end method

.method public static synthetic lambda$of$1([Lcom/miui/expose/utils/ClassHolder;)[Ljava/lang/Class;
    .locals 3

    .line 20
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 21
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 22
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/miui/expose/utils/ClassHolder;->get()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs of([Lcom/miui/expose/utils/ClassHolder;)Lcom/miui/expose/utils/ParameterTypes;
    .locals 1

    .line 19
    new-instance v0, Lcom/miui/expose/utils/-$$Lambda$ParameterTypes$dvgKmkkJTQMqv_R1ZL2L2Hiocp8;

    invoke-direct {v0, p0}, Lcom/miui/expose/utils/-$$Lambda$ParameterTypes$dvgKmkkJTQMqv_R1ZL2L2Hiocp8;-><init>([Lcom/miui/expose/utils/ClassHolder;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Class;)Lcom/miui/expose/utils/ParameterTypes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/miui/expose/utils/ParameterTypes;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/miui/expose/utils/-$$Lambda$ParameterTypes$c--c8H-HhtAHKp_bZOndhtJMw9c;

    invoke-direct {v0, p0}, Lcom/miui/expose/utils/-$$Lambda$ParameterTypes$c--c8H-HhtAHKp_bZOndhtJMw9c;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public abstract get()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
