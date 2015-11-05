.class Lcom/crucialtec/biometric/FingerprintHandler$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crucialtec/biometric/FingerprintHandler;->parseEmulateFile(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isResultTag:Z

.field result:Z

.field targetResult:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/crucialtec/biometric/FingerprintHandler;


# direct methods
.method constructor <init>(Lcom/crucialtec/biometric/FingerprintHandler;)V
    .locals 1

    .prologue
    .line 726
    iput-object p1, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->targetResult:Ljava/util/Vector;

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->isResultTag:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 733
    iget-boolean v2, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->isResultTag:Z

    if-eqz v2, :cond_1

    .line 734
    move v0, p2

    .line 735
    .local v0, "startPoint":I
    :cond_0
    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 736
    add-int/lit8 v0, v0, 0x1

    .line 737
    sub-int v2, v0, p2

    if-lt v2, p3, :cond_0

    .line 745
    .end local v0    # "startPoint":I
    :cond_1
    :goto_0
    return-void

    .line 742
    .restart local v0    # "startPoint":I
    :cond_2
    new-instance v1, Ljava/lang/String;

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 743
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->result:Z

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->isResultTag:Z

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->targetResult:Ljava/util/Vector;

    iget-boolean v1, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->result:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 749
    const-string v0, "Result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->isResultTag:Z

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->isResultTag:Z

    .line 754
    const-string v0, "Enrollment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    # getter for: Lcom/crucialtec/biometric/FingerprintHandler;->enrolResult:Ljava/util/Vector;
    invoke-static {v0}, Lcom/crucialtec/biometric/FingerprintHandler;->access$000(Lcom/crucialtec/biometric/FingerprintHandler;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->targetResult:Ljava/util/Vector;

    goto :goto_0

    .line 757
    :cond_2
    const-string v0, "Verification"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->this$0:Lcom/crucialtec/biometric/FingerprintHandler;

    # getter for: Lcom/crucialtec/biometric/FingerprintHandler;->verifyResult:Ljava/util/Vector;
    invoke-static {v0}, Lcom/crucialtec/biometric/FingerprintHandler;->access$100(Lcom/crucialtec/biometric/FingerprintHandler;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/crucialtec/biometric/FingerprintHandler$1;->targetResult:Ljava/util/Vector;

    goto :goto_0
.end method
