.class public final Landroidx/lifecycle/SavedStateHandle;
.super Ljava/lang/Object;
.source "SavedStateHandle.java"


# static fields
.field private static final ACCEPTABLE_CLASSES:[Ljava/lang/Class;


# instance fields
.field private final mLiveDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object<",
            "*>;>;"
        }
    .end annotation
.end field

.field final mRegular:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

.field final mSavedStateProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1d

    .line 376
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, [Z

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, [D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, [I

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, [J

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, [Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Binder;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Bundle;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, [B

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, [C

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/CharSequence;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, [Ljava/lang/CharSequence;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Ljava/util/ArrayList;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, [F

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Parcelable;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, [Landroid/os/Parcelable;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const-class v1, Ljava/io/Serializable;

    const/16 v3, 0x17

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const-class v1, [S

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const-class v1, Landroid/util/SparseArray;

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    .line 407
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    const-class v1, Landroid/util/Size;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_0
    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const/16 v1, 0x1c

    .line 408
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1

    const-class v2, Landroid/util/SizeF;

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_1
    aput-object v2, v0, v1

    sput-object v0, Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mSavedStateProviders:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mLiveDatas:Ljava/util/Map;

    .line 64
    new-instance v0, Landroidx/lifecycle/SavedStateHandle$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/SavedStateHandle$1;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mSavedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mRegular:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mSavedStateProviders:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mLiveDatas:Ljava/util/Map;

    .line 64
    new-instance v0, Landroidx/lifecycle/SavedStateHandle$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/SavedStateHandle$1;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mSavedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mRegular:Ljava/util/Map;

    return-void
.end method

.method static createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 111
    new-instance p0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    return-object p0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 122
    new-instance p0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p0, v0}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_2
    const-string p1, "keys"

    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo v1, "values"

    .line 126
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 130
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 131
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_3
    new-instance p0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p0, v0}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 128
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid bundle passed as restored state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateValue(Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 266
    :cond_0
    sget-object v0, Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 267
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t put value with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " into saved state"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mSavedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 251
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandle;->validateValue(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mLiveDatas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->mRegular:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
