.class Lmiuix/animation/internal/AnimRunner$Holder;
.super Ljava/lang/Object;
.source "AnimRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/AnimRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final inst:Lmiuix/animation/internal/AnimRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lmiuix/animation/internal/AnimRunner;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimRunner;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimRunner$Holder;->inst:Lmiuix/animation/internal/AnimRunner;

    return-void
.end method
