.class Lcom/mi/google/gson/internal/ConstructorConstructor$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/google/gson/internal/ConstructorConstructor;->get(Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mi/google/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/google/gson/internal/ConstructorConstructor;

.field final synthetic val$rawTypeCreator:Lcom/mi/google/gson/InstanceCreator;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Lcom/mi/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/google/gson/internal/ConstructorConstructor$2;->this$0:Lcom/mi/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/mi/google/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcom/mi/google/gson/InstanceCreator;

    iput-object p3, p0, Lcom/mi/google/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/google/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcom/mi/google/gson/InstanceCreator;

    iget-object p0, p0, Lcom/mi/google/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, p0}, Lcom/mi/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
