.class final Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/google/gson/JsonDeserializationContext;
.implements Lcom/mi/google/gson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;)V

    return-void
.end method
